--------------------------------------------------------
--  DDL for Trigger TRG_AGE_BANCOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_AGE_BANCOS" 
   BEFORE UPDATE OR DELETE
   ON age_bancos
   FOR EACH ROW
BEGIN
   IF UPDATING THEN
      IF :NEW.cagente || ' ' || :NEW.ctipbanco || ' ' || :NEW.cusualt || ' ' || :NEW.falta <>
                :OLD.cagente || ' ' || :OLD.ctipbanco || ' ' || :OLD.cusualt || ' '
                || :OLD.falta THEN
         -- crear registro histórico
         INSERT INTO his_age_bancos
                     (cagente, ctipbanco, cusualt, falta, cusumod,
                      fusumod)
              VALUES (:OLD.cagente, :OLD.ctipbanco, :OLD.cusualt, :OLD.falta, f_user,
                      f_sysdate);
      END IF;
   ELSIF DELETING THEN
      -- crear registro histórico
      INSERT INTO his_age_bancos
                  (cagente, ctipbanco, cusualt, falta, cusumod, fusumod)
           VALUES (:OLD.cagente, :OLD.ctipbanco, :OLD.cusualt, :OLD.falta, f_user, f_sysdate);
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      NULL;
END trg_age_bancos;







/
ALTER TRIGGER "AXIS"."TRG_AGE_BANCOS" ENABLE;
