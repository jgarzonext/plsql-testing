--------------------------------------------------------
--  DDL for Trigger TRG_MENU_OPCIONROL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_MENU_OPCIONROL" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON menu_opcionrol
   FOR EACH ROW
BEGIN
   IF INSERTING THEN
      -- crear registro histórico
      INSERT INTO his_menu_opcionrol
                  (crolmen, copcion, cusualt, falta, cusumod,
                   fmodifi, fmodif, cusumodr, accion)
           VALUES (:NEW.crolmen, :NEW.copcion, :NEW.cusualt, :NEW.falta, :NEW.cusumod,
                   :NEW.fmodifi, f_sysdate, f_user, 'N');
   ELSIF UPDATING THEN
      -- crear registro histórico
      INSERT INTO his_menu_opcionrol
                  (crolmen, copcion, cusualt, falta, cusumod,
                   fmodifi, fmodif, cusumodr, accion)
           VALUES (:OLD.crolmen, :OLD.copcion, :OLD.cusualt, :OLD.falta, :OLD.cusumod,
                   :OLD.fmodifi, f_sysdate, f_user, 'U');
   ELSE
      -- crear registro histórico
      INSERT INTO his_menu_opcionrol
                  (crolmen, copcion, cusualt, falta, cusumod,
                   fmodifi, fmodif, cusumodr, accion)
           VALUES (:OLD.crolmen, :OLD.copcion, :OLD.cusualt, :OLD.falta, :OLD.cusumod,
                   :OLD.fmodifi, f_sysdate, f_user, 'D');
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_menu_opcionrol', 1, SQLCODE, SQLERRM);
END trg_menu_opcionrol;







/
ALTER TRIGGER "AXIS"."TRG_MENU_OPCIONROL" ENABLE;
