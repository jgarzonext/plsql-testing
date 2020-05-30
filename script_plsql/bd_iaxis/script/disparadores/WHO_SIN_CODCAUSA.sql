--------------------------------------------------------
--  DDL for Trigger WHO_SIN_CODCAUSA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_CODCAUSA" 
   BEFORE INSERT OR UPDATE
   ON sin_codcausa
   FOR EACH ROW
BEGIN
   IF :OLD.ccausin IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_sin_codcausa;









/
ALTER TRIGGER "AXIS"."WHO_SIN_CODCAUSA" ENABLE;
