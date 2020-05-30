--------------------------------------------------------
--  DDL for Trigger WHO_SIN_CODTRAMITADOR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_CODTRAMITADOR" 
   BEFORE INSERT OR UPDATE
   ON sin_codtramitador
   FOR EACH ROW
BEGIN
   IF :OLD.ctramitad IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_sin_codtramitador;









/
ALTER TRIGGER "AXIS"."WHO_SIN_CODTRAMITADOR" ENABLE;
