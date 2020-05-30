--------------------------------------------------------
--  DDL for Trigger WHO_DESCAMPANYA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_DESCAMPANYA" 
 BEFORE INSERT OR UPDATE ON descampanya
 FOR EACH ROW
BEGIN
	IF :OLD.ccampanya IS NULL THEN 	-- (Es insert)
	  :NEW.CUSUALT := F_USER;
	  :NEW.FALTA   := F_SYSDATE;
	ELSE				-- (Es update)
	  :NEW.CUSUMOD := F_USER;
	  :NEW.FMODIF := F_SYSDATE;
	END IF;
END;









/
ALTER TRIGGER "AXIS"."WHO_DESCAMPANYA" ENABLE;
