--------------------------------------------------------
--  DDL for Trigger BI_PILAIF
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BI_PILAIF" 
BEFORE INSERT ON PILA_IFASES
FOR EACH ROW
DECLARE
BEGIN
	IF :NEW.PILAPK IS NULL THEN
		SELECT PILAIF_SEQ.NEXTVAL
		INTO :NEW.PILAPK
		FROM DUAL;
	END IF;
END BI_PILAIF;









/
ALTER TRIGGER "AXIS"."BI_PILAIF" ENABLE;
