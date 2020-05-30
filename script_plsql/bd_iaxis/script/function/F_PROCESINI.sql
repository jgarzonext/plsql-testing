--------------------------------------------------------
--  DDL for Function F_PROCESINI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_PROCESINI" (pcusuari IN VARCHAR2,   /* Usuario de la ejecuci�n */
                      pcempres IN NUMBER,     /* Empresa asociada */
                      pcproces IN VARCHAR2,   /* C�digo de proceso */
                      ptproces IN VARCHAR2,   /* Texto del proceso */
                      psproces OUT NUMBER)    /* N�mero de proceso */
RETURN NUMBER AUTHID current_user IS

   PRAGMA autonomous_transaction;

WFECHA  DATE;
WPROCES NUMBER;
BEGIN
-- Recuperamos la fecha
  SELECT SYSDATE
    INTO WFECHA
    FROM DUAL;
-- Recuperamos el sigueinte c�digo de proceso
  SELECT SPROCES.NEXTVAL
    INTO WPROCES
    FROM DUAL;
-- Damos de alta el proceso
  INSERT INTO PROCESOSCAB
         (SPROCES, CEMPRES,CUSUARI, CPROCES, TPROCES, FPROINI, FPROFIN, NERROR)
  VALUES (WPROCES,PCEMPRES,PCUSUARI,PCPROCES,PTPROCES,WFECHA,  NULL,    0);
-- Devolvemos el c�digo del proceso
  PSPROCES := WPROCES;

  COMMIT;

  RETURN 0;
END;

 
 

/

  GRANT EXECUTE ON "AXIS"."F_PROCESINI" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_PROCESINI" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_PROCESINI" TO "PROGRAMADORESCSI";
