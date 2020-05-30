--------------------------------------------------------
--  DDL for Trigger TRG_CFG_FORM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_CFG_FORM" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON cfg_form
   FOR EACH ROW
BEGIN
   IF INSERTING THEN
      -- crear registro histórico
      INSERT INTO his_cfg_form
                  (cempres, cform, cmodo, ccfgform, sproduc,
                   cidcfg, fmodif, cusumod, accion)
           VALUES (:NEW.cempres, :NEW.cform, :NEW.cmodo, :NEW.ccfgform, :NEW.sproduc,
                   :NEW.cidcfg, f_sysdate, f_user, 'N');
   ELSIF UPDATING THEN
      -- crear registro histórico
      INSERT INTO his_cfg_form
                  (cempres, cform, cmodo, ccfgform, sproduc,
                   cidcfg, fmodif, cusumod, accion)
           VALUES (:OLD.cempres, :OLD.cform, :OLD.cmodo, :OLD.ccfgform, :OLD.sproduc,
                   :OLD.cidcfg, f_sysdate, f_user, 'U');
   ELSE
      -- crear registro histórico
      INSERT INTO his_cfg_form
                  (cempres, cform, cmodo, ccfgform, sproduc,
                   cidcfg, fmodif, cusumod, accion)
           VALUES (:OLD.cempres, :OLD.cform, :OLD.cmodo, :OLD.ccfgform, :OLD.sproduc,
                   :OLD.cidcfg, f_sysdate, f_user, 'D');
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_cfg_form', 1, SQLCODE, SQLERRM);
END trg_cfg_form;







/
ALTER TRIGGER "AXIS"."TRG_CFG_FORM" ENABLE;
