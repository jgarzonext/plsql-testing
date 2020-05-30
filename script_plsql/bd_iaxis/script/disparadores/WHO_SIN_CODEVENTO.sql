--------------------------------------------------------
--  DDL for Trigger WHO_SIN_CODEVENTO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_CODEVENTO" 
   BEFORE INSERT OR UPDATE
   ON sin_codevento
   FOR EACH ROW
BEGIN
   IF :OLD.cevento IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_sin_codevento;









/
ALTER TRIGGER "AXIS"."WHO_SIN_CODEVENTO" ENABLE;
