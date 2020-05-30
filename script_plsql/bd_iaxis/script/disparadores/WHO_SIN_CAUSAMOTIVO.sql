--------------------------------------------------------
--  DDL for Trigger WHO_SIN_CAUSAMOTIVO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_CAUSAMOTIVO" 
   BEFORE INSERT OR UPDATE
   ON sin_causa_motivo
   FOR EACH ROW
BEGIN
   IF :OLD.scaumot IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_sin_causamotivo;









/
ALTER TRIGGER "AXIS"."WHO_SIN_CAUSAMOTIVO" ENABLE;
