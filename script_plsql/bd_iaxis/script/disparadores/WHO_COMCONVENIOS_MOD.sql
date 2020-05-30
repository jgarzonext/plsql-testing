--------------------------------------------------------
--  DDL for Trigger WHO_COMCONVENIOS_MOD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_COMCONVENIOS_MOD" 
   BEFORE INSERT OR UPDATE
   ON comconvenios_mod
   FOR EACH ROW
BEGIN
   IF INSERTING THEN   -- (Es insert)
      :NEW.cusualt := NVL(:NEW.cusualt, f_user);
      :NEW.falta := NVL(:NEW.falta, f_sysdate);
      :NEW.cusumod := NULL;
      :NEW.fmodifi := NULL;
   ELSIF UPDATING THEN   -- (Es update
      :NEW.cusumod := NVL(:NEW.cusumod, f_user);
      :NEW.fmodifi := NVL(:NEW.fmodifi, f_sysdate);
   END IF;
END;







/
ALTER TRIGGER "AXIS"."WHO_COMCONVENIOS_MOD" ENABLE;
