--------------------------------------------------------
--  DDL for Trigger BI_MOVRECIBO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BI_MOVRECIBO" 
BEFORE INSERT ON movrecibo
FOR EACH ROW
DECLARE
  tiprec NUMBER;
  importe NUMBER;
  t_producto VARCHAR2(10);
  classe VARCHAR2(10);
  vcmovimi NUMBER;
  SSEGUR NUMBER;
  fefect DATE;
BEGIN
	-----
	BEGIN
		SELECT tipo_producto, clase
		INTO t_producto, classe
		FROM tipos_producto
		WHERE (cramo, cmodali, ctipseg, ccolect) =
				(SELECT cramo, cmodali, ctipseg, ccolect
				FROM seguros
				WHERE sseguro =
					(SELECT sseguro
					   FROM recibos
					  WHERE nrecibo = :new.nrecibo
					)
				);
	EXCEPTION
		WHEN OTHERS THEN
			t_producto := NULL;
			classe := NULL;
	END;
	-----
	IF classe IN ('PP','AHORRO') OR t_producto IN ('PIG') THEN
		-- lectura del tipo de recibo
		BEGIN
			SELECT ctiprec, sseguro, fefecto
			INTO tiprec, ssegur, fefect
			FROM recibos
			WHERE nrecibo = :new.nrecibo;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
				tiprec := NULL;
				ssegur := NULL;
				fefect := null;
		END;
		if classe IN ('PP') THEN
			BEGIN
				select fvalmov
				into fefect
				from ctaseguro
				where nrecibo = :new.nrecibo;
			EXCEPTION
				WHEN OTHERS THEN
					fefect := :new.fmovini;
			END;
		end if;
		--estrec : 0 pendent
		--estrec : 1 cobrat
		--estrec : 2 anul·lat
		BEGIN
			SELECT itotalr
			INTO importe
			FROM vdetrecibos
			WHERE nrecibo = :new.nrecibo;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
				importe := NULL;
		END;
		----
		IF tiprec = 9 AND :new.cestrec = 1 AND :new.cestant = 0 THEN ----Es dona per pagat un extorn
			INSERT INTO pila_pendientes
				(sseguro, ffecmov, iimpmov,
				ccodmov,
				coment, fecha_envio)
			VALUES
				(ssegur, fefect, importe,
				19,
				'19-'||lpad(to_char(:new.nrecibo),9,'0'), NULL);
		END IF;
		----
		IF tiprec IN (0,1,3,10) AND :new.cestrec = 1 AND :new.cestant = 0 THEN ----Es dona per cobrat/pagat
			INSERT INTO pila_pendientes
				(sseguro, ffecmov, iimpmov,
				ccodmov,
				coment, fecha_envio)
			VALUES
				(ssegur, fefect, importe,
				decode(tiprec,10,23,  ----Traspassos d'entrada
								 2),  ----Aprotacions periòdiques.
				'00-'||lpad(to_char(:new.nrecibo),9,'0'), NULL);
		END IF;
		---
		IF tiprec =4 AND :new.cestrec = 1 AND :new.cestant = 0 THEN ----Aportacions extraordinàries.
			declare
				carrega NUMBER := 0;
			begin
				select count(*)
				into carrega
				from tmp_CTRLseguroS
				where sseguro = ssegur;
				if carrega = 0 then ---Per pantalles.
					INSERT INTO pila_pendientes
						(sseguro, ffecmov, iimpmov,
						ccodmov,
						coment, fecha_envio)
					VALUES
						(ssegur, fefect, importe,
						1,
						'00-'||lpad(to_char(:new.nrecibo),9,'0'), NULL);
				end if;
			end;
		END IF;
		----
		IF tiprec IN (0,1,3,4) AND :new.cestrec = 2 AND :new.cestant = 0 THEN ----Es dona per anul·lat
		-----Retrocessió.
			INSERT INTO pila_pendientes
				(sseguro, ffecmov, iimpmov,
				ccodmov,
				coment, fecha_envio)
			VALUES
				(ssegur, fefect, importe,
				18,
				'18-'||lpad(to_char(:new.nrecibo),9,'0'), NULL);
		END IF;
	END IF;
END BI_movrecibo;









/
ALTER TRIGGER "AXIS"."BI_MOVRECIBO" DISABLE;
