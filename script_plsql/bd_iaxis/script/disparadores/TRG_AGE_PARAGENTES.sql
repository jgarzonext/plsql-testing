--------------------------------------------------------
--  DDL for Trigger TRG_AGE_PARAGENTES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_AGE_PARAGENTES" 
   BEFORE UPDATE OR DELETE
   ON age_paragentes
   FOR EACH ROW
BEGIN
   IF UPDATING THEN
      IF (:NEW.cparam || ' ' || :NEW.cagente || ' ' || :NEW.nvalpar || ' ' || :NEW.tvalpar
          || ' ' || :NEW.fvalpar) <>(:OLD.cparam || ' ' || :OLD.cagente || ' ' || :OLD.nvalpar
                                     || ' ' || :OLD.tvalpar || ' ' || :OLD.fvalpar) THEN
         -- crear registro histórico
         INSERT INTO hisage_paragentes
                     (cparam, cagente, nvalpar, tvalpar, fvalpar,
                      cusuari, fmodifi)
              VALUES (:OLD.cparam, :OLD.cagente, :OLD.nvalpar, :OLD.tvalpar, :OLD.fvalpar,
                      f_user, f_sysdate);
      END IF;
   ELSIF DELETING THEN
      -- crear registro histórico
      INSERT INTO hisage_paragentes
                  (cparam, cagente, nvalpar, tvalpar, fvalpar,
                   cusuari, fmodifi)
           VALUES (:OLD.cparam, :OLD.cagente, :OLD.nvalpar, :OLD.tvalpar, :OLD.fvalpar,
                   f_user, f_sysdate);
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      NULL;
END trg_age_paragentes;




/
ALTER TRIGGER "AXIS"."TRG_AGE_PARAGENTES" ENABLE;
