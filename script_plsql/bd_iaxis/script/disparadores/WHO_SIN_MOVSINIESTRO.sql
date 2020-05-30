--------------------------------------------------------
--  DDL for Trigger WHO_SIN_MOVSINIESTRO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_MOVSINIESTRO" 
   BEFORE INSERT
   ON sin_movsiniestro
   FOR EACH ROW
BEGIN
   IF :OLD.nsinies IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   END IF;
END who_sin_movsiniestro;









/
ALTER TRIGGER "AXIS"."WHO_SIN_MOVSINIESTRO" ENABLE;
