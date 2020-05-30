--------------------------------------------------------
--  DDL for Trigger WHO_TRAMITACIONSINI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_TRAMITACIONSINI" 
 BEFORE INSERT OR UPDATE ON tramitacionsini
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
ALTER TRIGGER "AXIS"."WHO_TRAMITACIONSINI" ENABLE;
