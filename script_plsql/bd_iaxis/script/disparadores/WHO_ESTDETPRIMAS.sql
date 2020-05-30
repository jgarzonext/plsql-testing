--------------------------------------------------------
--  DDL for Trigger WHO_ESTDETPRIMAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_ESTDETPRIMAS" 
   BEFORE INSERT OR UPDATE
   ON estdetprimas
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
ALTER TRIGGER "AXIS"."WHO_ESTDETPRIMAS" ENABLE;
