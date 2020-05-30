--------------------------------------------------------
--  DDL for Trigger WHO_COMISIONGAR_CRITERIO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_COMISIONGAR_CRITERIO" 
   BEFORE INSERT OR UPDATE
   ON comisiongar_criterio
   FOR EACH ROW
BEGIN
   IF :OLD.ccomisi IS NULL THEN   -- (Es insert)
      :NEW.cusualta := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END;





/
ALTER TRIGGER "AXIS"."WHO_COMISIONGAR_CRITERIO" ENABLE;
