--------------------------------------------------------
--  DDL for Trigger WHO_SIN_GARCAUSAMOTIVO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_GARCAUSAMOTIVO" 
   BEFORE INSERT OR UPDATE
   ON sin_gar_causa_motivo
   FOR EACH ROW
BEGIN
   IF :OLD.scaumot IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_sin_garcausamotivo;









/
ALTER TRIGGER "AXIS"."WHO_SIN_GARCAUSAMOTIVO" ENABLE;
