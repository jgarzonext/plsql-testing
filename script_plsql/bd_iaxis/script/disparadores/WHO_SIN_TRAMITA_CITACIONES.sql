--------------------------------------------------------
--  DDL for Trigger WHO_SIN_TRAMITA_CITACIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_TRAMITA_CITACIONES" 
   BEFORE INSERT OR UPDATE
   ON SIN_TRAMITA_CITACIONES
   FOR EACH ROW
BEGIN
   IF :OLD.nsinies IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END WHO_SIN_TRAMITA_CITACIONES;


/
ALTER TRIGGER "AXIS"."WHO_SIN_TRAMITA_CITACIONES" ENABLE;
