--------------------------------------------------------
--  DDL for Trigger WHO_EXTRAREC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_EXTRAREC" 
   BEFORE INSERT OR UPDATE
   ON extrarec
   FOR EACH ROW
BEGIN
   IF :OLD.sseguro IS NULL THEN -- (Es insert)
      :NEW.cusualt := F_USER;
      :NEW.falta  := f_sysdate;
   ELSE -- (Es update)
      :NEW.cusumod := F_USER;
      :NEW.fmodif := f_sysdate;
   END IF;
END;









/
ALTER TRIGGER "AXIS"."WHO_EXTRAREC" ENABLE;
