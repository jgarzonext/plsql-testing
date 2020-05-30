--------------------------------------------------------
--  DDL for Trigger WHO_SIN_TRAMITA_MOVIMIENTO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_TRAMITA_MOVIMIENTO" 
   BEFORE INSERT
   ON sin_tramita_movimiento
   FOR EACH ROW
BEGIN
   IF :OLD.nsinies IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   END IF;
END who_sin_movsiniestro;









/
ALTER TRIGGER "AXIS"."WHO_SIN_TRAMITA_MOVIMIENTO" ENABLE;
