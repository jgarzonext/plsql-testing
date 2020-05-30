--------------------------------------------------------
--  DDL for Trigger WHO_PSU_DESCONTROL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_PSU_DESCONTROL" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON psu_descontrol
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

      INSERT INTO his_psu_descontrol
                  (ccontrol, cidioma, tcontrol, cusualt, falta,
                   cusumod, fmodifi)
           VALUES (:OLD.ccontrol, :OLD.cidioma, :OLD.tcontrol, :OLD.cusualt, :OLD.falta,
                   f_user, f_sysdate);
   END IF;
END;








/
ALTER TRIGGER "AXIS"."WHO_PSU_DESCONTROL" ENABLE;
