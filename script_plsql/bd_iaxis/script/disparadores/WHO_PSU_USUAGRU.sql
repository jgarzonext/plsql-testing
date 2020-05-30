--------------------------------------------------------
--  DDL for Trigger WHO_PSU_USUAGRU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_PSU_USUAGRU" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON psu_usuagru
   FOR EACH ROW
BEGIN
   IF INSERTING THEN
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE
      IF UPDATING THEN
         :NEW.cusumod := f_user;
         :NEW.fmodifi := f_sysdate;
      END IF;

      INSERT INTO his_psu_usuagru
                  (cusuari, cusuagru, cusualt, falta, cusumod, fmodifi)
           VALUES (:OLD.cusuari, :OLD.cusuagru, :OLD.cusualt, :OLD.falta, f_user, f_sysdate);
   END IF;
END;








/
ALTER TRIGGER "AXIS"."WHO_PSU_USUAGRU" ENABLE;
