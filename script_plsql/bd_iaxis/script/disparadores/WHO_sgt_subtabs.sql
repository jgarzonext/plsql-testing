--------------------------------------------------------
--  DDL for Trigger WHO_sgt_subtabs
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_sgt_subtabs" 
   BEFORE INSERT OR UPDATE
   ON sgt_subtabs
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
ALTER TRIGGER "AXIS"."WHO_sgt_subtabs" ENABLE;
