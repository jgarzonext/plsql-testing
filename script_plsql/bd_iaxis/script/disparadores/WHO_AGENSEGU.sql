--------------------------------------------------------
--  DDL for Trigger WHO_AGENSEGU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_AGENSEGU" 
   BEFORE INSERT OR UPDATE
   ON agensegu
   FOR EACH ROW
BEGIN
   IF :OLD.sseguro IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_agensegu;









/
ALTER TRIGGER "AXIS"."WHO_AGENSEGU" ENABLE;
