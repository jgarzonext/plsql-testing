--------------------------------------------------------
--  DDL for Trigger WHO_AGD_MOVAGENDA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_AGD_MOVAGENDA" 
   BEFORE INSERT OR UPDATE
   ON agd_movagenda
   FOR EACH ROW
BEGIN
   IF :OLD.nmovagd IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END;









/
ALTER TRIGGER "AXIS"."WHO_AGD_MOVAGENDA" ENABLE;
