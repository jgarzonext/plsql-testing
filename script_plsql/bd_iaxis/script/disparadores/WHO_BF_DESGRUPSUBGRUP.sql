--------------------------------------------------------
--  DDL for Trigger WHO_BF_DESGRUPSUBGRUP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_BF_DESGRUPSUBGRUP" 
   BEFORE INSERT OR UPDATE
   ON bf_desgrupsubgrup
   FOR EACH ROW
BEGIN
   IF :OLD.cusualt IS NULL THEN
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END;







/
ALTER TRIGGER "AXIS"."WHO_BF_DESGRUPSUBGRUP" ENABLE;