--------------------------------------------------------
--  DDL for Procedure P_PROCESFIN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_PROCESFIN" (psproces IN NUMBER, pnerror  IN NUMBER)
AUTHID current_user IS
--
-- Descripción: Finaliza un proceso.
-- Parámetros :
--               psproces: nº de proceso a finalizar
--               pnerror : nº de errores en el proceso
--
   PRAGMA autonomous_transaction;

   WFECHA  DATE;
   WPROCES NUMBER;
BEGIN
-- Recuperamos la fecha
  SELECT SYSDATE
    INTO WFECHA
    FROM DUAL;
-- Validamos la existencia del proceso
--  BEGIN
    SELECT SPROCES
      INTO WPROCES
      FROM PROCESOSCAB
     WHERE SPROCES = PSPROCES;
--  EXCEPTION
--    WHEN NO_DATA_FOUND THEN
--      RETURN 1;
--    WHEN TOO_MANY_ROWS THEN
--      RETURN 2;
--  END;
   IF SQL%FOUND THEN
   -- Actualizamos la información del proceso
     UPDATE PROCESOSCAB
        SET FPROFIN = WFECHA,
            NERROR  = PNERROR
      WHERE SPROCES = PSPROCES;

     COMMIT;
  END IF;

--  RETURN 0;
END;

 
 

/

  GRANT EXECUTE ON "AXIS"."P_PROCESFIN" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_PROCESFIN" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_PROCESFIN" TO "PROGRAMADORESCSI";
