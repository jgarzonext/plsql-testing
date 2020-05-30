--------------------------------------------------------
--  DDL for Trigger WHO_AGD_USU_ROL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_AGD_USU_ROL" 
   BEFORE INSERT OR UPDATE
   ON agd_usu_rol
   FOR EACH ROW
BEGIN
   IF :OLD.cusuari IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END;









/
ALTER TRIGGER "AXIS"."WHO_AGD_USU_ROL" ENABLE;
