--------------------------------------------------------
--  DDL for Trigger WHO_SIN_TRAMITA_DESTINATARIO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_TRAMITA_DESTINATARIO" 
   BEFORE INSERT OR UPDATE
   ON sin_tramita_destinatario
   FOR EACH ROW
BEGIN
   IF :OLD.nsinies IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_sin_tramita_destinatario;









/
ALTER TRIGGER "AXIS"."WHO_SIN_TRAMITA_DESTINATARIO" ENABLE;
