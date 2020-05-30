--------------------------------------------------------
--  DDL for Trigger WHO_DESC_PRIM_MIN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_DESC_PRIM_MIN" 
   BEFORE INSERT OR UPDATE
   ON desc_prim_min
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
ALTER TRIGGER "AXIS"."WHO_DESC_PRIM_MIN" ENABLE;