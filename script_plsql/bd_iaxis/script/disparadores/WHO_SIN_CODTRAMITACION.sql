--------------------------------------------------------
--  DDL for Trigger WHO_SIN_CODTRAMITACION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_CODTRAMITACION" 
   BEFORE INSERT OR UPDATE
   ON sin_codtramitacion
   FOR EACH ROW
BEGIN
   IF :OLD.ctramit IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_sin_codtramitacion;









/
ALTER TRIGGER "AXIS"."WHO_SIN_CODTRAMITACION" ENABLE;
