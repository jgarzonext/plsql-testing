--------------------------------------------------------
--  DDL for Trigger WHO_RIESGOS_IR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_RIESGOS_IR" 
   BEFORE INSERT OR UPDATE
   ON riesgos_ir
   FOR EACH ROW
BEGIN
   IF INSERTING THEN   -- (Es insert)
      :NEW.cusualt := NVL(:NEW.cusualt, f_user);
      :NEW.falta := NVL(:NEW.falta, f_sysdate);
      :NEW.cusumod := NULL;
      :NEW.fmodifi := NULL;
   ELSIF UPDATING THEN   -- (Es update
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END;







/
ALTER TRIGGER "AXIS"."WHO_RIESGOS_IR" ENABLE;
