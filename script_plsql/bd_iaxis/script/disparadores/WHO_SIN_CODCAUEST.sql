--------------------------------------------------------
--  DDL for Trigger WHO_SIN_CODCAUEST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_CODCAUEST" 
   BEFORE INSERT OR UPDATE
   ON sin_codcauest
   FOR EACH ROW
BEGIN
   IF :OLD.ccauest IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_sin_codcauest;









/
ALTER TRIGGER "AXIS"."WHO_SIN_CODCAUEST" ENABLE;
