--------------------------------------------------------
--  DDL for Trigger WHO_PSU_CODUSUGRU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_PSU_CODUSUGRU" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON psu_codusuagru
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

      INSERT INTO his_psu_codusuagru
                  (cusuagru, cusualt, falta, cusumod, fmodifi)
           VALUES (:OLD.cusuagru, :OLD.cusualt, :OLD.falta, f_user, f_sysdate);
   END IF;
END;








/
ALTER TRIGGER "AXIS"."WHO_PSU_CODUSUGRU" ENABLE;
