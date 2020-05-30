--------------------------------------------------------
--  DDL for Trigger WHO_SIN_CODTIPTRAMITADOR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_CODTIPTRAMITADOR" 
   BEFORE INSERT OR UPDATE
   ON sin_codtiptramitador
   FOR EACH ROW
BEGIN
   IF :OLD.ctiptramit IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_sin_codtiptramitador;









/
ALTER TRIGGER "AXIS"."WHO_SIN_CODTIPTRAMITADOR" ENABLE;
