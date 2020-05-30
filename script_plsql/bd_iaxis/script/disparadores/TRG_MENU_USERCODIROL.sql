--------------------------------------------------------
--  DDL for Trigger TRG_MENU_USERCODIROL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_MENU_USERCODIROL" 
   AFTER UPDATE OR DELETE
   ON menu_usercodirol
   FOR EACH ROW
DECLARE
BEGIN
   IF :NEW.cuser <> :OLD.cuser
      OR :NEW.crolmen <> :OLD.crolmen
      OR :NEW.cusualt <> :OLD.cusualt
      OR NVL(:NEW.falta ,SYSDATE-1)<> NVL(:OLD.falta,SYSDATE)
      OR :NEW.cusumod <> :OLD.cusumod
      OR NVL(:NEW.fmodifi,SYSDATE-1) <> NVL(:OLD.fmodifi,SYSDATE) THEN
      INSERT INTO his_menu_usercodirol
                  (cuser, crolmen, cusualt, falta, cusumod, fmodifi)
           VALUES (:OLD.cuser, :OLD.crolmen, :OLD.cusualt, :OLD.falta, f_user, f_sysdate);
   END IF;
END;









/
ALTER TRIGGER "AXIS"."TRG_MENU_USERCODIROL" ENABLE;
