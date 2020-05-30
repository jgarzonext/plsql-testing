--------------------------------------------------------
--  DDL for Trigger WHO_DESCVIG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_DESCVIG" 
   BEFORE INSERT OR UPDATE
   ON descvig
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
ALTER TRIGGER "AXIS"."WHO_DESCVIG" ENABLE;
