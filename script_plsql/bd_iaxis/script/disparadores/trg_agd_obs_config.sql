--------------------------------------------------------
--  DDL for Trigger trg_agd_obs_config
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."trg_agd_obs_config" 
   AFTER UPDATE OR DELETE
   ON agd_obs_config
   FOR EACH ROW
DECLARE
BEGIN
   IF :NEW.cempres <> :OLD.cempres
      OR :NEW.ctipagd <> :OLD.ctipagd
      OR :NEW.cconobs <> :OLD.cconobs
      OR :NEW.crolprop <> :OLD.crolprop
      OR :NEW.cusualt <> :OLD.cusualt
      OR NVL(:NEW.falta, F_SYSDATE - 1) <> NVL(:OLD.falta, F_SYSDATE)
      OR :NEW.cusumod <> :OLD.cusumod
      OR NVL(:NEW.fmodifi, F_SYSDATE - 1) <> NVL(:OLD.fmodifi, F_SYSDATE) THEN
      INSERT INTO agd_his_obs_cfg
                  (cempres, ctipagd, cconobs, crolprop, cusualt,
                   falta, cusumod, fmodifi)
           VALUES (:OLD.cempres, :OLD.ctipagd, :OLD.cconobs, :OLD.crolprop, :OLD.cusualt,
                   :OLD.falta, f_user, f_sysdate);
   END IF;
END;









/
ALTER TRIGGER "AXIS"."trg_agd_obs_config" ENABLE;
