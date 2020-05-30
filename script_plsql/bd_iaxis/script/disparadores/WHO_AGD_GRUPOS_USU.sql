--------------------------------------------------------
--  DDL for Trigger WHO_AGD_GRUPOS_USU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_AGD_GRUPOS_USU" 
   BEFORE INSERT OR UPDATE
   ON agd_grupos_usu
   FOR EACH ROW
BEGIN
   IF :OLD.cgrupo IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END;









/
ALTER TRIGGER "AXIS"."WHO_AGD_GRUPOS_USU" ENABLE;
