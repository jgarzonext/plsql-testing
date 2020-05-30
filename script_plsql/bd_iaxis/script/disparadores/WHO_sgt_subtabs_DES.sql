--------------------------------------------------------
--  DDL for Trigger WHO_sgt_subtabs_DES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_sgt_subtabs_DES" 
   BEFORE INSERT OR UPDATE
   ON sgt_subtabs_des
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
ALTER TRIGGER "AXIS"."WHO_sgt_subtabs_DES" ENABLE;