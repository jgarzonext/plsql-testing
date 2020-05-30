--------------------------------------------------------
--  DDL for Trigger WHO_REDCOMERCIAL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_REDCOMERCIAL" 
   BEFORE INSERT OR UPDATE
   ON redcomercial
   FOR EACH ROW
BEGIN
   IF INSERTING THEN   -- (Es insert)
      :NEW.cusualt := NVL(:NEW.cusualt, f_user);
      :NEW.falta := NVL(:NEW.falta, f_sysdate);
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   ELSIF UPDATING THEN   -- (Es update
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END;







/
ALTER TRIGGER "AXIS"."WHO_REDCOMERCIAL" ENABLE;
