--------------------------------------------------------
--  DDL for Trigger WHO_SIN_TRAMITACION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_TRAMITACION" 
   BEFORE INSERT OR UPDATE
   ON sin_tramitacion
   FOR EACH ROW
BEGIN
   IF :OLD.nsinies IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_sin_tramitacion;









/
ALTER TRIGGER "AXIS"."WHO_SIN_TRAMITACION" ENABLE;
