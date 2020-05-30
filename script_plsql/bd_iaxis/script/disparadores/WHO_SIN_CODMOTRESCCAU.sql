--------------------------------------------------------
--  DDL for Trigger WHO_SIN_CODMOTRESCCAU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_CODMOTRESCCAU" 
   BEFORE INSERT OR UPDATE
   ON sin_codmotresccau
   FOR EACH ROW
BEGIN
   IF :OLD.ccausin IS NULL THEN   -- (Es insert)
      :NEW.cusualt := NVL(:NEW.cusualt, f_user);
      :NEW.falta := NVL(:NEW.falta, f_sysdate);
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_sin_codmotresccau;









/
ALTER TRIGGER "AXIS"."WHO_SIN_CODMOTRESCCAU" ENABLE;
