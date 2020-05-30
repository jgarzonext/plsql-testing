--------------------------------------------------------
--  DDL for Trigger TRG_CFG_USER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_CFG_USER" 
   AFTER UPDATE OR DELETE
   ON cfg_user
   FOR EACH ROW
DECLARE
BEGIN
   IF :NEW.cuser <> :OLD.cuser
      OR :NEW.cempres <> :OLD.cempres
      OR :NEW.ccfgwiz <> :OLD.ccfgwiz
      OR :NEW.ccfgform <> :OLD.ccfgform
      OR :NEW.ccfgacc <> :OLD.ccfgacc
      OR :NEW.ccfgdoc <> :OLD.ccfgdoc
      OR :NEW.ccfgmap <> :OLD.ccfgmap THEN
      INSERT INTO his_cfg_user
                  (cuser, cempres, ccfgwiz, ccfgform, ccfgacc,
                   ccfgdoc, fmodif, cusumod, ccfgmap)
           VALUES (:OLD.cuser, :OLD.cempres, :OLD.ccfgwiz, :OLD.ccfgform, :OLD.ccfgacc,
                   :OLD.ccfgdoc, f_sysdate, f_user, :OLD.ccfgmap);
   END IF;
END;







/
ALTER TRIGGER "AXIS"."TRG_CFG_USER" ENABLE;
