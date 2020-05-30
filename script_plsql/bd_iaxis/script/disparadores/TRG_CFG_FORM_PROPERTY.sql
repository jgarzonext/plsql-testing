--------------------------------------------------------
--  DDL for Trigger TRG_CFG_FORM_PROPERTY
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_CFG_FORM_PROPERTY" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON cfg_form_property
   FOR EACH ROW
BEGIN
   IF INSERTING THEN
      -- crear registro histórico
      INSERT INTO his_cfg_form_property
                  (cempres, cidcfg, cform, citem, cprpty,
                   cvalue, fmodif, cusumod, accion)
           VALUES (:NEW.cempres, :NEW.cidcfg, :NEW.cform, :NEW.citem, :NEW.cprpty,
                   :NEW.cvalue, f_sysdate, f_user, 'N');
   ELSIF UPDATING THEN
      -- crear registro histórico
      INSERT INTO his_cfg_form_property
                  (cempres, cidcfg, cform, citem, cprpty,
                   cvalue, fmodif, cusumod, accion)
           VALUES (:OLD.cempres, :OLD.cidcfg, :OLD.cform, :OLD.citem, :OLD.cprpty,
                   :OLD.cvalue, f_sysdate, f_user, 'U');
   ELSE
      -- crear registro histórico
      INSERT INTO his_cfg_form_property
                  (cempres, cidcfg, cform, citem, cprpty,
                   cvalue, fmodif, cusumod, accion)
           VALUES (:OLD.cempres, :OLD.cidcfg, :OLD.cform, :OLD.citem, :OLD.cprpty,
                   :OLD.cvalue, f_sysdate, f_user, 'D');
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_cfg_form_property', 1, SQLCODE, SQLERRM);
END trg_cfg_form_property;







/
ALTER TRIGGER "AXIS"."TRG_CFG_FORM_PROPERTY" ENABLE;
