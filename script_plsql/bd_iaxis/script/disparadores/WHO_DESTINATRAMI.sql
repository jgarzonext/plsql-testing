--------------------------------------------------------
--  DDL for Trigger WHO_DESTINATRAMI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_DESTINATRAMI" 
 BEFORE INSERT OR UPDATE ON destinatrami
 FOR EACH ROW
BEGIN
	IF :OLD.nsinies IS NULL THEN 	-- (Es insert)
	  :NEW.CUSUALT := F_USER;
	  :NEW.FALTA   := F_SYSDATE;
	ELSE				-- (Es update)
	  :NEW.CUSUMOD := F_USER;
	  :NEW.FMODIFI := F_SYSDATE;
	END IF;
END;









/
ALTER TRIGGER "AXIS"."WHO_DESTINATRAMI" ENABLE;
