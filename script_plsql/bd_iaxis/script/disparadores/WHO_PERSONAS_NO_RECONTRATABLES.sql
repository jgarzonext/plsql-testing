--------------------------------------------------------
--  DDL for Trigger WHO_PERSONAS_NO_RECONTRATABLES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_PERSONAS_NO_RECONTRATABLES" 
   BEFORE INSERT OR UPDATE
   ON personas_no_recontratables
   FOR EACH ROW
BEGIN
   IF :OLD.ctipide IS NULL THEN   -- (Es insert)
      :NEW.cusualt := NVL(:NEW.cusualt, f_user);
      :NEW.falta := NVL(:NEW.falta, f_sysdate);
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_personas_no_recontratables;








/
ALTER TRIGGER "AXIS"."WHO_PERSONAS_NO_RECONTRATABLES" ENABLE;
