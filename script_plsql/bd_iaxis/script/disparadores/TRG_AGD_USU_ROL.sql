--------------------------------------------------------
--  DDL for Trigger TRG_AGD_USU_ROL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_AGD_USU_ROL" 
   AFTER UPDATE OR DELETE
   ON agd_usu_rol
   FOR EACH ROW
DECLARE
BEGIN
   IF :NEW.cempres <> :OLD.cempres
      OR :NEW.cusuari <> :OLD.cusuari
      OR :NEW.crolobs <> :OLD.crolobs
      OR :NEW.cusualt <> :OLD.cusualt
      OR NVL(:NEW.falta, F_SYSDATE - 1) <> NVL(:OLD.falta, F_SYSDATE)
      OR :NEW.cusumod <> :OLD.cusumod
      OR NVL(:NEW.fmodifi, F_SYSDATE - 1) <> NVL(:OLD.fmodifi, F_SYSDATE) THEN
      INSERT INTO agd_his_usu_rol
                  (cempres, cusuari, crolobs, cusualt, falta,
                   cusumod, fmodifi)
           VALUES (:OLD.cempres, :OLD.cusuari, :OLD.crolobs, :OLD.cusualt, :OLD.falta,
                   f_user, f_sysdate);
   END IF;
END;









/
ALTER TRIGGER "AXIS"."TRG_AGD_USU_ROL" ENABLE;
