--------------------------------------------------------
--  DDL for Function F_REGULARIZA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_REGULARIZA" (psseguro IN NUMBER, piprianu IN NUMBER, pdatasin IN DATE,
				pdatacar IN DATE, psproces IN NUMBER, pfemisio IN DATE,
				piregula IN OUT NUMBER)
RETURN NUMBER authid current_user IS
/***************************************************************************
	F_REGULARIZA: Mira si un seguro tiene regularizaci�n y si es as�
			  calcula el importe de regularizaci�n.
			  Si no es de regularizaci�n y todo va bien => RETURN 1000
			  Si es de regularizacion y todo va bien => RETURN 0
	ALLIBCTR.
	Modificaci�: Se genera un recibo de extorno de importe iregula
	Modificaci�: Se genera un movimiento de seguro de regularizaci�n
	Modificaci�: Se pone en f_movseguro el pcimpres = null, para coger el
	             estado de impresi�n del �ltimo movimiento
	Modificaci�: Se a�ade el par�metro pfemisio, para pasarlo a f_movseguro
   Modificaci�: Se a�ade otro par�metro en la llamada a f_impsinies
                para que tome los siniestros que est�n entre la fecha
                de �ltima renovaci�n y pr�xima cartera.
****************************************************************************/
	xitotpri	number:=0;
	pitotsin	number:=0;
	xcpregun	number;
	xcrespue	number;
	num_err	number;
	xitotal	number:=0;
	xpregula	number:=0;
	pnmovimi	number;
	pcpoliza	number:= 1;
	pnimport2	number;
BEGIN
	BEGIN
		SELECT cpregun, crespue
		INTO xcpregun, xcrespue
		FROM PREGUNSEG
		WHERE sseguro = psseguro
		AND cpregun = 80
		AND crespue = 1;
	EXCEPTION
		WHEN NO_DATA_FOUND THEN
			RETURN 1000;
		WHEN TOO_MANY_ROWS THEN
			null;
		WHEN OTHERS THEN
			RETURN 103185;   ---Error en la funci�n
	END;
	xitotpri := round(piprianu*85/100);
	num_err := f_impsinies(psseguro, pdatasin,pdatacar, pitotsin);
	IF num_err <> 0 THEN
		RETURN num_err;
	ELSE
		xitotal := xitotpri - NVL(pitotsin,0);
		IF xitotal > 0 THEN
			BEGIN
				SELECT pregula
				INTO xpregula
				FROM REGULARIZACIONES
				WHERE sseguro = psseguro
				AND fregula is null;
			EXCEPTION
				WHEN NO_DATA_FOUND THEN
					RETURN 103186;     --Falta porcentaje de regularizaci�n
				WHEN OTHERS THEN
					RETURN 103185;	 --Error en la funci�n
			END;
			piregula := round(xitotal * xpregula / 100);
			BEGIN
				UPDATE REGULARIZACIONES SET
				fregula = pdatacar,
				iregula = piregula,
				ipriant = piprianu,
				isinant = pitotsin
				WHERE sseguro = psseguro
				AND fregula is null;
			EXCEPTION
				WHEN OTHERS THEN
					RETURN 103185;
			END;
			-- Se genera un movimiento de recibo de regularizaci�n
			-- Se pone pcimpres = null para que coja el estado de impresion del ultimo movimiento
			num_err := f_movseguro(psseguro,null,504,6,pdatacar,0,null,null,pdatacar,
					pnmovimi,pfemisio);
			IF num_err <> 0 THEN
				RETURN 101992;
			END IF;
			-- Generamos el recibo de extorno correpondiente
			-- Modificaci�: Cambian los par�metros de recries
			num_err := f_recries(1,psseguro,null,trunc(sysdate),pdatacar,
				pdatacar+1,9,null,null,null,null,psproces,0,'A',null,
				null,-piregula, null, null,pnmovimi,pcpoliza, pnimport2);
			IF num_err <> 0 THEN
				RETURN 103185;
			END IF;
		ELSE
			piregula := 0;
		END IF;
	END IF;
	RETURN 0;
END;

/

  GRANT EXECUTE ON "AXIS"."F_REGULARIZA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_REGULARIZA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_REGULARIZA" TO "PROGRAMADORESCSI";
