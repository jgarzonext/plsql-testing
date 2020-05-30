--------------------------------------------------------
--  DDL for Trigger PREINSERT_CODIAUTCLAVEH
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."PREINSERT_CODIAUTCLAVEH" 
BEFORE INSERT ON CODIAUTCLAVEH
FOR EACH ROW
DECLARE
  NUMERO NUMBER;
BEGIN
  SELECT sclaveh.NEXTVAL INTO NUMERO FROM dual;
  :NEW.sclaveh := NUMERO;
EXCEPTION
  WHEN VALUE_ERROR THEN
    dbms_output.put_line(SQLERRM);
  WHEN OTHERS THEN
    dbms_output.put_line(SQLERRM);
END;









/
ALTER TRIGGER "AXIS"."PREINSERT_CODIAUTCLAVEH" ENABLE;
