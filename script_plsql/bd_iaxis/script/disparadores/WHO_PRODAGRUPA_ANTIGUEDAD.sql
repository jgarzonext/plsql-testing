--------------------------------------------------------
--  DDL for Trigger WHO_PRODAGRUPA_ANTIGUEDAD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_PRODAGRUPA_ANTIGUEDAD" 
   BEFORE INSERT OR UPDATE
   ON prodagrupa_antiguedad
   FOR EACH ROW
BEGIN
   IF :OLD.cusualt IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END;







/
ALTER TRIGGER "AXIS"."WHO_PRODAGRUPA_ANTIGUEDAD" ENABLE;
