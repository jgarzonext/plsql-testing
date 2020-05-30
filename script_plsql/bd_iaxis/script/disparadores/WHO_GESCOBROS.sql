--------------------------------------------------------
--  DDL for Trigger WHO_GESCOBROS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_GESCOBROS" 
   BEFORE INSERT OR UPDATE
   ON gescobros
   FOR EACH ROW
BEGIN
   IF :OLD.cusualt IS NULL THEN
      -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE
      -- (Es update)
      :NEW.cusuari := f_user;
      :NEW.fmovimi := f_sysdate;
   END IF;
END;







/
ALTER TRIGGER "AXIS"."WHO_GESCOBROS" ENABLE;
