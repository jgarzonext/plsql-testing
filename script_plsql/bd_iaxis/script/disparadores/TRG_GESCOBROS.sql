--------------------------------------------------------
--  DDL for Trigger TRG_GESCOBROS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_GESCOBROS" 
   BEFORE UPDATE OR DELETE
   ON gescobros
   FOR EACH ROW
BEGIN
   IF UPDATING THEN
      IF :NEW.sperson || ' ' || :NEW.cdomici || ' ' || :NEW.cusualt || ' ' || :NEW.falta <>
                  :OLD.sperson || ' ' || :OLD.cdomici || ' ' || :OLD.cusualt || ' '
                  || :OLD.falta THEN
         -- crear registro historico
         INSERT INTO hisgescobros
                     (sseguro, sperson, cdomici, cusualt, falta,
                      cusuari, fmovimi, cusumod, fusumod)
              VALUES (:OLD.sseguro, :OLD.sperson, :OLD.cdomici, :OLD.cusualt, :OLD.falta,
                      :OLD.cusuari, :OLD.fmovimi, f_user, f_sysdate);

         -- en el UPDATE ademas informar el usuario y la fecha en que se modifica el registro
         :NEW.cusuari := f_user;
         :NEW.fmovimi := f_sysdate;
      END IF;
   ELSIF DELETING THEN
      -- crear registro historico
      INSERT INTO hisgescobros
                  (sseguro, sperson, cdomici, cusualt, falta,
                   cusuari, fmovimi, cusumod, fusumod)
           VALUES (:OLD.sseguro, :OLD.sperson, :OLD.cdomici, :OLD.cusualt, :OLD.falta,
                   :OLD.cusuari, :OLD.fmovimi, f_user, f_sysdate);
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      NULL;
END trg_gescobros;







/
ALTER TRIGGER "AXIS"."TRG_GESCOBROS" ENABLE;
