--------------------------------------------------------
--  DDL for Trigger WHO_SIN_TRAMITA_MOVPAGO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_TRAMITA_MOVPAGO" 
   BEFORE INSERT
   ON sin_tramita_movpago
   FOR EACH ROW
BEGIN
   IF :OLD.sidepag IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   END IF;
END who_sin_movsiniestro;









/
ALTER TRIGGER "AXIS"."WHO_SIN_TRAMITA_MOVPAGO" ENABLE;
