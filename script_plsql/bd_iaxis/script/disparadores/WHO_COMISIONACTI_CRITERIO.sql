--------------------------------------------------------
--  DDL for Trigger WHO_COMISIONACTI_CRITERIO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_COMISIONACTI_CRITERIO" 
   BEFORE INSERT OR UPDATE
   ON comisionacti_criterio
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
ALTER TRIGGER "AXIS"."WHO_COMISIONACTI_CRITERIO" ENABLE;
