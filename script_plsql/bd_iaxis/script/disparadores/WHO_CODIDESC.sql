--------------------------------------------------------
--  DDL for Trigger WHO_CODIDESC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_CODIDESC" 
   BEFORE INSERT OR UPDATE
   ON codidesc
   FOR EACH ROW
BEGIN
   IF :OLD.cdesc IS NULL THEN   -- (Es insert)
      :NEW.cusualta := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END;







/
ALTER TRIGGER "AXIS"."WHO_CODIDESC" ENABLE;
