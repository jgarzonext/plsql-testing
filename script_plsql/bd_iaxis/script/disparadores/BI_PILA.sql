--------------------------------------------------------
--  DDL for Trigger BI_PILA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BI_PILA" 
BEFORE INSERT ON PILA_PENDIENTES
FOR EACH ROW
DECLARE
BEGIN
	IF :NEW.PILAPK IS NULL THEN
		SELECT PILAPEND_SEQ.NEXTVAL
		INTO :NEW.PILAPK
		FROM DUAL;
	END IF;
END BI_PILA;









/
ALTER TRIGGER "AXIS"."BI_PILA" ENABLE;
