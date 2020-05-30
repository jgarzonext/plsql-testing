--------------------------------------------------------
--  DDL for Trigger TRG_PARGARANPRO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PARGARANPRO" 
   BEFORE UPDATE OR DELETE
   ON pargaranpro
   FOR EACH ROW
BEGIN
   IF UPDATING THEN
      IF :NEW.cramo || ' ' || :NEW.cmodali || ' ' || :NEW.ctipseg || ' ' || :NEW.ccolect
         || ' ' || :NEW.cactivi || :NEW.cgarant || ' ' || :NEW.cpargar || ' ' || :NEW.cvalpar
         || ' ' || :NEW.sproduc || ' ' || :NEW.tvalpar || ' ' || :NEW.fvalpar <>
            :OLD.cramo || ' ' || :OLD.cmodali || ' ' || :OLD.ctipseg || ' ' || :OLD.ccolect
            || ' ' || :OLD.cactivi || :OLD.cgarant || ' ' || :OLD.cpargar || ' '
            || :OLD.cvalpar || ' ' || :OLD.sproduc || ' ' || :OLD.tvalpar || ' '
            || :OLD.fvalpar THEN
         -- crear registro histórico
         INSERT INTO pargaranpro_his
                     (cramo, cmodali, ctipseg, ccolect, cactivi,
                      cgarant, cpargar, cvalpar, sproduc, tvalpar,
                      fvalpar, cusumod, fusumod)
              VALUES (:OLD.cramo, :OLD.cmodali, :OLD.ctipseg, :OLD.ccolect, :OLD.cactivi,
                      :OLD.cgarant, :OLD.cpargar, :OLD.cvalpar, :OLD.sproduc, :OLD.tvalpar,
                      :OLD.fvalpar, f_user, f_sysdate);
      END IF;
   ELSIF DELETING THEN
      -- crear registro histórico
      INSERT INTO pargaranpro_his
                  (cramo, cmodali, ctipseg, ccolect, cactivi,
                   cgarant, cpargar, cvalpar, sproduc, tvalpar,
                   fvalpar, cusumod, fusumod)
           VALUES (:OLD.cramo, :OLD.cmodali, :OLD.ctipseg, :OLD.ccolect, :OLD.cactivi,
                   :OLD.cgarant, :OLD.cpargar, :OLD.cvalpar, :OLD.sproduc, :OLD.tvalpar,
                   :OLD.fvalpar, f_user, f_sysdate);
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_pargaranpro', 1, 'ERROR', SQLERRM);
END trg_pargaranpro;







/
ALTER TRIGGER "AXIS"."TRG_PARGARANPRO" ENABLE;
