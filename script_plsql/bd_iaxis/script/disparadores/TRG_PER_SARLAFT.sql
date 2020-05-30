--------------------------------------------------------
--  DDL for Trigger TRG_PER_SARLAFT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PER_SARLAFT" 
   BEFORE UPDATE OR DELETE
   ON per_sarlaft
   FOR EACH ROW
BEGIN
   IF UPDATING THEN
      IF :NEW.sperson || ' ' || :NEW.cagente || ' ' || :NEW.fefecto || ' ' || :NEW.cusualt
         || ' ' || :NEW.falta <> :OLD.sperson || ' ' || :OLD.cagente || ' ' || :OLD.fefecto
                                 || ' ' || :OLD.cusualt || ' ' || :OLD.falta THEN
         -- crear registro historico
         INSERT INTO hisper_sarlaft
                     (sperson, cagente, fefecto, cusualt, falta,
                      cusuari, fmovimi, cusumod, fusumod)
              VALUES (:OLD.sperson, :OLD.cagente, :OLD.fefecto, :OLD.cusualt, :OLD.falta,
                      :OLD.cusuari, :OLD.fmovimi, f_user, f_sysdate);

         -- en el UPDATE ademas informar el usuario y la fecha en que se modifica el registro
         :NEW.cusuari := f_user;
         :NEW.fmovimi := f_sysdate;
      END IF;
   ELSIF DELETING THEN
      -- crear registro historico
      INSERT INTO hisper_sarlaft
                  (sperson, cagente, fefecto, cusualt, falta,
                   cusuari, fmovimi, cusumod, fusumod)
           VALUES (:OLD.sperson, :OLD.cagente, :OLD.fefecto, :OLD.cusualt, :OLD.falta,
                   :OLD.cusuari, :OLD.fmovimi, f_user, f_sysdate);
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      NULL;
END trg_per_sarlaft;








/
ALTER TRIGGER "AXIS"."TRG_PER_SARLAFT" ENABLE;
