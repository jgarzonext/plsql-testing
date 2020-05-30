--------------------------------------------------------
--  DDL for Trigger WHO_DESCPROD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_DESCPROD" 
   BEFORE INSERT OR UPDATE
   ON descprod
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
ALTER TRIGGER "AXIS"."WHO_DESCPROD" ENABLE;
