--------------------------------------------------------
--  DDL for Trigger WHO_SIN_SINIESTRO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_SINIESTRO" 
   BEFORE INSERT OR UPDATE
   ON sin_siniestro
   FOR EACH ROW
BEGIN
   IF :OLD.nsinies IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_sin_siniestro;









/
ALTER TRIGGER "AXIS"."WHO_SIN_SINIESTRO" ENABLE;
