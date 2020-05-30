--------------------------------------------------------
--  DDL for Trigger WHO_SIN_TRAMITA_LOCALIZA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_TRAMITA_LOCALIZA" 
   BEFORE INSERT OR UPDATE
   ON sin_tramita_localiza
   FOR EACH ROW
BEGIN
   IF :OLD.nsinies IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   END IF;
END who_sin_tramita_localiza;









/
ALTER TRIGGER "AXIS"."WHO_SIN_TRAMITA_LOCALIZA" ENABLE;
