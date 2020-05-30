--------------------------------------------------------
--  DDL for Procedure SALDOS_ULK
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."SALDOS_ULK" (aaini IN NUMBER,
	   	  		  					   mmini IN NUMBER,
									   aafin IN NUMBER,
									   mmfin IN NUMBER,
									   ssegd IN NUMBER DEFAULT 0,
									   ssegh IN NUMBER DEFAULT 999999999,
									   proceso IN NUMBER default 0)
  IS
 aa  number := aaini;
 mm  number := mmini;
 aaf number := aafin;
 mmf number := mmfin;
 saldo number;
 sseg_desde  number := ssegd;
 sseg_hasta  number := ssegh;
 veces number := 0;
 sseguro_ant number := -1;
 cesta_ant number := -1;
 fechapri DATE;
 fechault DATE;
 uni   NUMBER;
 cont  NUMBER := 0;
begin

--   gettimer.reset_timer;

--   delete from saldos_poliza_ulk
--    where cproces = proceso;

   DELETE FROM saldos_fondo_ulk
    WHERE cproces = proceso;
   COMMIT;

   fechapri := TO_DATE(aa*10000+mm*100+1,'yyyymmdd');
   fechault := LAST_DAY(TO_DATE(aaf*10000+mmf*100+1,'yyyymmdd'));

	-- Saldos periodo anterior
   FOR c IN (SELECT distinct sseguro, cesta
               FROM saldos_cesta_ulk
                WHERE sseguro BETWEEN sseg_desde AND sseg_hasta
                  AND ffecmov < primera_hora(fechapri)
				  AND cesta IS NOT NULL
                ORDER BY sseguro, cesta
            )
   LOOP
        veces := veces+1;
        uni := 0;
        saldo := F_SALDO_FONDOUNI_ULK(c.sseguro, c.cesta, fechapri-1, uni);
        INSERT INTO saldos_fondo_ulk (cproces, sseguro, fondo, fecha, saldo, unidades, tipo, norden)
           VALUES
          (proceso, c.sseguro, c.cesta, fechapri-1, nvl(saldo,0), uni, 'A',0);

      COMMIT;

   END LOOP;

 	   cont := 0;


	-- Movimientos del periodo
   FOR t IN (SELECT tipo_operacion
   			   FROM tipos_operacion)
   LOOP

	   FOR c IN (SELECT distinct sseguro, cesta, ffecmov, cmovimi, imovimi
				   FROM saldos_cesta_ulk
					WHERE sseguro BETWEEN sseg_desde AND sseg_hasta
					  AND ffecmov BETWEEN primera_hora(fechapri) AND ultima_hora(fechault)
					  AND cmovimi IN (SELECT cmovimi
					  					FROM tipos_mov_oper
					  				   WHERE tipo_operacion = t.tipo_operacion)
					ORDER BY sseguro, ffecmov, cesta
				)
	   LOOP
			veces := veces+1;
			cont := cont + 1;
			uni := 0;
			IF c.cesta IS NULL THEN
			    saldo := c.imovimi;
			ELSE
				saldo := F_SALDO_FONDOUNI_ULK(c.sseguro, c.cesta, c.ffecmov, uni);
			END IF;
			INSERT INTO saldos_fondo_ulk (cproces, sseguro, fondo, fecha, saldo, unidades, tipo, norden, importe)
			   VALUES
			  (proceso, c.sseguro, nvl(c.cesta, 501), c.ffecmov, nvl(saldo,0), uni, 'I', t.tipo_operacion, c.imovimi);

		  COMMIT;

	   END LOOP;
	END LOOP;

	-- Saldos periodo actual
   FOR c IN (SELECT distinct sseguro, cesta
               FROM saldos_cesta_ulk
                WHERE sseguro BETWEEN sseg_desde AND sseg_hasta
                  AND ffecmov <= ultima_hora(fechault)
				  AND cesta IS NOT NULL
                ORDER BY sseguro, cesta
            )
   LOOP
        veces := veces+1;
		uni := 0;
		saldo := F_SALDO_FONDOUNI_ULK(c.sseguro, c.cesta, fechault, uni);
		INSERT INTO saldos_fondo_ulk (cproces, sseguro, fondo, fecha, saldo, unidades, tipo, norden)
		   VALUES
		  (proceso, c.sseguro, c.cesta, fechault, nvl(saldo,0), uni, 'F', 99);

        COMMIT;

   END LOOP;

--   dbms_output.put_line('Ha tardado ' ||to_char(gettimer.get_elapsed_time));
--   dbms_output.put_line('Registros: '||to_char(veces));

END SALDOS_ULK;

 
 

/

  GRANT EXECUTE ON "AXIS"."SALDOS_ULK" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."SALDOS_ULK" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."SALDOS_ULK" TO "PROGRAMADORESCSI";
