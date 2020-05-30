--------------------------------------------------------
--  DDL for Trigger WHO_SUP_DIFERIDOSSEG_ERR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SUP_DIFERIDOSSEG_ERR" 
   BEFORE INSERT OR UPDATE
   ON sup_diferidosseg_err
   FOR EACH ROW
BEGIN
   IF :OLD.sseguro IS NULL THEN   -- (Es insert)
      :NEW.cusuari := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_sup_diferidosseg_err;





/
ALTER TRIGGER "AXIS"."WHO_SUP_DIFERIDOSSEG_ERR" ENABLE;
