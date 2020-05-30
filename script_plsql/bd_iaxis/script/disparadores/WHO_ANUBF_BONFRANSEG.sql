--------------------------------------------------------
--  DDL for Trigger WHO_ANUBF_BONFRANSEG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_ANUBF_BONFRANSEG" 
   BEFORE INSERT OR UPDATE
   ON anubf_bonfranseg
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
ALTER TRIGGER "AXIS"."WHO_ANUBF_BONFRANSEG" ENABLE;
