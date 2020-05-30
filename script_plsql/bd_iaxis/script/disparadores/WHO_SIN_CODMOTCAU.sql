--------------------------------------------------------
--  DDL for Trigger WHO_SIN_CODMOTCAU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_CODMOTCAU" 
   BEFORE INSERT OR UPDATE
   ON sin_codmotcau
   FOR EACH ROW
BEGIN
   IF :OLD.ccausin IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_sin_codmotcau;









/
ALTER TRIGGER "AXIS"."WHO_SIN_CODMOTCAU" ENABLE;
