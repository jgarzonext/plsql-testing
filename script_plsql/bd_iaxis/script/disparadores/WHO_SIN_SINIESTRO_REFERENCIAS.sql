--------------------------------------------------------
--  DDL for Trigger WHO_SIN_SINIESTRO_REFERENCIAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_SINIESTRO_REFERENCIAS" 
   BEFORE INSERT OR UPDATE
   ON sin_siniestro_referencias
   FOR EACH ROW
BEGIN
   IF :OLD.nsinies IS NULL THEN   -- (Es insert)
      :NEW.cusualt := NVL(:NEW.cusualt, f_user);
      :NEW.falta := NVL(:NEW.falta, f_sysdate);
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_sin_siniestro_referencias;








/
ALTER TRIGGER "AXIS"."WHO_SIN_SINIESTRO_REFERENCIAS" ENABLE;
