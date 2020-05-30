--------------------------------------------------------
--  DDL for Trigger WHO_MENU_CODIROLMEN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_MENU_CODIROLMEN" 
 BEFORE INSERT OR UPDATE ON MENU_CODIROLMEN
 FOR EACH ROW
BEGIN
	IF :OLD.CROLMEN IS NULL THEN 	-- (Es insert)
	  :NEW.CUSUALT := F_USER;
	  :NEW.FALTA   := F_SYSDATE;
	ELSE				-- (Es update)
	  :NEW.CUSUMOD := F_USER;
	  :NEW.FMODIFI := F_SYSDATE;
	END IF;
END;









/
ALTER TRIGGER "AXIS"."WHO_MENU_CODIROLMEN" ENABLE;