--------------------------------------------------------
--  DDL for Trigger WHO_PSU_DESRESULTADO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_PSU_DESRESULTADO" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON psu_desresultado
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

      INSERT INTO his_psu_desresultado
                  (ccontrol, sproduc, cnivel, cidioma, tdesniv,
                   cusualt, falta, cusumod, fmodifi)
           VALUES (:OLD.ccontrol, :OLD.sproduc, :OLD.cnivel, :OLD.cidioma, :OLD.tdesniv,
                   :OLD.cusualt, :OLD.falta, f_user, f_sysdate);
   END IF;
END;








/
ALTER TRIGGER "AXIS"."WHO_PSU_DESRESULTADO" ENABLE;
