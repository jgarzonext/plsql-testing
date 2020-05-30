--------------------------------------------------------
--  DDL for Trigger WHO_LOG_SUP_DIFERIDOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_LOG_SUP_DIFERIDOS" 
   BEFORE INSERT OR UPDATE
   ON log_sup_diferidos
   FOR EACH ROW
BEGIN
   IF :OLD.cusualt IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   END IF;
END;







/
ALTER TRIGGER "AXIS"."WHO_LOG_SUP_DIFERIDOS" ENABLE;
