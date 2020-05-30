--------------------------------------------------------
--  DDL for Procedure EJECUTAR_CIERRES_CORREDURIA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."EJECUTAR_CIERRES_CORREDURIA" authid current_user is
/***************************************************************************
   Este proceso mirar� en la tabla CIERRES si hay alg�n registro cuyo estado
   sea 'cierre programado' (cestado IN (20,21)). Si es as�, lanzar� el cierre
   para el periodo que indique el registro, y se actualizar� la tabla cierres
   para indicar el nuevo estado del periodo.
****************************************************************************/
    CURSOR c_cierres IS
       SELECT ctipo, cempres, fperini, fperfin, fcierre, sproces, cestado
       FROM CIERRES
       WHERE cestado IN (20,21,22)   -- cierre o previo programado
       ORDER BY ctipo,cempres,fperini;
    error	NUMBER;
    psproces	NUMBER;
    pfproces	DATE;
    v_tipo      NUMBER;
    l_fcierre_ant DATE;
BEGIN
  FOR reg IN c_cierres LOOP
      -- pmodo    = 2  (cierre definitivo)
      -- pmoneda  = 2  (pesetas)
      -- pidioma  = 1  (catal�n)
      error:= 0;
      ---------------------------------------------------------
      -- MERITACI�N
      ---------------------------------------------------------
      IF reg.ctipo = 6 THEN  -- Tancament de meritaci�
         -- Reajustar el periode de meritaci� de vendes y rebuts
         -- busquem el tancament anterior per reajustar

         IF error = 0 THEN
           pac_merita.proceso_batch_cierre(2,reg.cempres,2,1,reg.fperfin,reg.fcierre,error,
                                           psproces, pfproces);
           dbms_output.put_line('C�lculo de meritacion proceso: '||psproces||'. Resultado: '||error);
           dbms_output.put_line('Fin empresa: '||reg.cempres||' - '||to_char(f_sysdate,'hh:mi:ss'));
           IF error = 0 THEN
             UPDATE CIERRES
                SET cestado = 1,
                    sproces = psproces,
                    fproces = pfproces
              WHERE ctipo = 6
                AND cempres = reg.cempres
                AND fperini = reg.fperini;
              COMMIT;
           END IF;
         END IF;
      END IF;

      ---------------------------------------------------------
      -- CUADRE C.C.
      ---------------------------------------------------------
      IF reg.ctipo = 9 THEN  -- Tancament deL COMPTE CORRENT
         pac_cuadre_cc.proces_batch_quadre(2, reg.cempres , 2,reg.fcierre,
                                           error , psproces, pfproces) ;

         dbms_output.put_line('C�lculo de meritacion proceso: '||psproces||'. Resultado: '||error);
         dbms_output.put_line('Fin empresa: '||reg.cempres||' - '||to_char(f_sysdate,'hh:mi:ss'));
         IF error = 0 THEN
            UPDATE CIERRES SET cestado = 1,
                               sproces = psproces,
                               fproces = pfproces
            WHERE ctipo = 9
              AND cempres = reg.cempres
             AND fperini = reg.fperini;
            COMMIT;
         END IF;
      END IF;

   END LOOP;
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."EJECUTAR_CIERRES_CORREDURIA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."EJECUTAR_CIERRES_CORREDURIA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."EJECUTAR_CIERRES_CORREDURIA" TO "PROGRAMADORESCSI";
