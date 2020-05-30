--------------------------------------------------------
--  DDL for Trigger WHO_REMESAS_PREVIO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_REMESAS_PREVIO" 
   BEFORE INSERT OR UPDATE
   ON remesas_previo
   FOR EACH ROW
BEGIN
   IF :OLD.sremesa IS NULL THEN   -- (Es insert)
      :NEW.cusuario := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusuario := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_remesas_previo;









/
ALTER TRIGGER "AXIS"."WHO_REMESAS_PREVIO" ENABLE;
