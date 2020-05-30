--------------------------------------------------------
--  DDL for Trigger WHO_COMISIONGAR_CONCEP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_COMISIONGAR_CONCEP" 
   BEFORE INSERT OR UPDATE
   ON comisiongar_concep
   FOR EACH ROW
BEGIN
   IF :OLD.ccomisi IS NULL THEN
      :NEW.cusualta := f_user;
      :NEW.falta := f_sysdate;
   ELSE
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END;







/
ALTER TRIGGER "AXIS"."WHO_COMISIONGAR_CONCEP" ENABLE;
