--------------------------------------------------------
--  DDL for Trigger WHO_DESCACTI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_DESCACTI" 
   BEFORE INSERT OR UPDATE
   ON descacti
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
ALTER TRIGGER "AXIS"."WHO_DESCACTI" ENABLE;
