--------------------------------------------------------
--  DDL for Procedure P_TRAZA_PROCESO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_TRAZA_PROCESO" (
   pcempres IN NUMBER,
   pcparam IN VARCHAR2,
   psproces IN NUMBER,
   ptpaquete IN VARCHAR2,
   ptfuncion IN VARCHAR2,
   ptprocedimiento IN VARCHAR2,
   pnlinea IN NUMBER,
   pttraza IN VARCHAR2,
   plimpiartraza IN NUMBER DEFAULT 0) IS
   PRAGMA AUTONOMOUS_TRANSACTION;
   v_id           NUMBER;
BEGIN
   IF psproces IS NOT NULL
      OR ptpaquete IS NOT NULL
      OR ptfuncion IS NOT NULL
      OR ptprocedimiento IS NOT NULL THEN
      IF NVL(pac_parametros.f_parempresa_n(pcempres, pcparam), 0) = 1 THEN
         IF plimpiartraza = 1 THEN
            DELETE      tmp_traza_proceso
                  WHERE sproces = NVL(psproces, sproces)
                    AND tpaquete = NVL(ptpaquete, tpaquete)
                    AND tfuncion = NVL(ptfuncion, tfuncion)
                    AND tprocedimiento = NVL(ptprocedimiento, tprocedimiento);

            --Limpieza de registros antiguos (3 meses)
            DELETE      tmp_traza_proceso
                  WHERE falta <= f_sysdate
                                 - NVL(pac_parametros.f_parempresa_n(pcempres,
                                                                     'DIAS_TRAZA_PROCESO'),
                                       0);
         END IF;

         INSERT INTO tmp_traza_proceso
                     (sproces, tpaquete, tfuncion, tprocedimiento, nlinea, ttraza, cusualta)
              VALUES (psproces, ptpaquete, ptfuncion, ptprocedimiento, pnlinea, pttraza, f_user);

         COMMIT;
      END IF;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      ROLLBACK;
END;

/

  GRANT EXECUTE ON "AXIS"."P_TRAZA_PROCESO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_TRAZA_PROCESO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_TRAZA_PROCESO" TO "PROGRAMADORESCSI";
