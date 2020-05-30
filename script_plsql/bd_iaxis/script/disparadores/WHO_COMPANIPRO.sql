--------------------------------------------------------
--  DDL for Trigger WHO_COMPANIPRO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_COMPANIPRO" 
   BEFORE INSERT OR UPDATE
   ON companipro
   FOR EACH ROW
BEGIN
   IF :OLD.sproduc IS NULL
      OR :OLD.ccompani IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_companipro;









/
ALTER TRIGGER "AXIS"."WHO_COMPANIPRO" ENABLE;
