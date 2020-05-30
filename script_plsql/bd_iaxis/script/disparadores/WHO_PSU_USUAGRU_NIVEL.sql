--------------------------------------------------------
--  DDL for Trigger WHO_PSU_USUAGRU_NIVEL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_PSU_USUAGRU_NIVEL" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON psu_usuagru_nivel
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

      INSERT INTO his_psu_usuagru_nivel
                  (cusuagru, sproduc, cnivel, cusualt, falta, cusumod,
                   fmodifi)
           VALUES (:OLD.cusuagru, :OLD.sproduc, :OLD.cnivel, :OLD.cusualt, :OLD.falta, f_user,
                   f_sysdate);
   END IF;
END;








/
ALTER TRIGGER "AXIS"."WHO_PSU_USUAGRU_NIVEL" ENABLE;
