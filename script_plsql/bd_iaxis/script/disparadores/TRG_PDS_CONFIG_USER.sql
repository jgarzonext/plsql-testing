--------------------------------------------------------
--  DDL for Trigger TRG_PDS_CONFIG_USER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PDS_CONFIG_USER" 
   AFTER UPDATE OR DELETE
   ON pds_config_user
   FOR EACH ROW
DECLARE
BEGIN
   IF :NEW.cuser <> :OLD.cuser
      OR :NEW.cconfwiz <> :OLD.cconfwiz
      OR :NEW.cconacc <> :OLD.cconacc
      OR :NEW.cconform <> :OLD.cconform
      OR :NEW.cconfmen <> :OLD.cconfmen
      OR :NEW.cconsupl <> :OLD.cconsupl THEN
      INSERT INTO his_pds_config_user
                  (cuser, cconfwiz, cconacc, cconform, cconfmen,
                   cconsupl, fmodif, cusumod)
           VALUES (:OLD.cuser, :OLD.cconfwiz, :OLD.cconacc, :OLD.cconform, :OLD.cconfmen,
                   :OLD.cconsupl, f_sysdate, f_user);
   END IF;
END;









/
ALTER TRIGGER "AXIS"."TRG_PDS_CONFIG_USER" ENABLE;
