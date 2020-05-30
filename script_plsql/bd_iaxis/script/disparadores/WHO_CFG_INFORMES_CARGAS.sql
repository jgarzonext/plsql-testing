--------------------------------------------------------
--  DDL for Trigger WHO_CFG_INFORMES_CARGAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_CFG_INFORMES_CARGAS" 
   BEFORE INSERT OR UPDATE
   ON cfg_informes_cargas
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
ALTER TRIGGER "AXIS"."WHO_CFG_INFORMES_CARGAS" ENABLE;
