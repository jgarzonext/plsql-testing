--------------------------------------------------------
--  DDL for Trigger WHO_SUP_ACCIONES_DIF_ERR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SUP_ACCIONES_DIF_ERR" 
   BEFORE INSERT OR UPDATE
   ON sup_acciones_dif_err
   FOR EACH ROW
BEGIN
   IF :OLD.sseguro IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_sup_acciones_dif_err;





/
ALTER TRIGGER "AXIS"."WHO_SUP_ACCIONES_DIF_ERR" ENABLE;
