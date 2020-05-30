--------------------------------------------------------
--  DDL for Trigger WHO_SIN_DATPAGO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_DATPAGO" 
   BEFORE INSERT OR UPDATE
   ON sin_datpago
   FOR EACH ROW
BEGIN
   IF :OLD.ctippag IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_sin_datpago;









/
ALTER TRIGGER "AXIS"."WHO_SIN_DATPAGO" ENABLE;
