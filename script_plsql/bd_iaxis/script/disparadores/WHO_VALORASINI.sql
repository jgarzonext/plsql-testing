--------------------------------------------------------
--  DDL for Trigger WHO_VALORASINI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_VALORASINI" 
 BEFORE insert or update ON valorasini
 FOR EACH ROW
BEGIN
	if :old.nsinies is null then 	-- (�s insert)
	  :NEW.CUSUALT := F_USER;
	  :NEW.FALTA   := SYSDATE;
	else				-- (�s update)
	  :NEW.CUSUMOD := F_USER;
	  :NEW.FMODIFI := SYSDATE;
	end if;
END;









/
ALTER TRIGGER "AXIS"."WHO_VALORASINI" ENABLE;
