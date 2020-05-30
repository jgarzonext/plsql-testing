--------------------------------------------------------
--  DDL for Trigger BI_FSE4507
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BI_FSE4507" 
BEFORE INSERT ON FIS_FSE4507
FOR EACH ROW
DECLARE
BEGIN
	IF :NEW.SFSE4507 IS NULL THEN
		SELECT FSE4507_SEQ.NEXTVAL
		INTO :NEW.SFSE4507
		FROM DUAL;
	END IF;
END BI_FSE4507;









/
ALTER TRIGGER "AXIS"."BI_FSE4507" ENABLE;
