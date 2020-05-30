--------------------------------------------------------
--  DDL for Trigger WHO_SIN_REDTRAMITADOR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_REDTRAMITADOR" 
   BEFORE INSERT OR UPDATE
   ON sin_redtramitador
   FOR EACH ROW
BEGIN
   IF :OLD.cempres IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_sin_redtramitador;









/
ALTER TRIGGER "AXIS"."WHO_SIN_REDTRAMITADOR" ENABLE;
