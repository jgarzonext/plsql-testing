--------------------------------------------------------
--  DDL for Trigger TRG_AGE_ASOCIACIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_AGE_ASOCIACIONES" 
   BEFORE UPDATE OR DELETE
   ON age_asociaciones
   FOR EACH ROW
BEGIN
   IF UPDATING THEN
      IF :NEW.cagente || ' ' || :NEW.ctipasociacion || ' ' || :NEW.numcolegiado || ' '
         || :NEW.cusualt || ' ' || :NEW.falta <>
            :OLD.cagente || ' ' || :OLD.ctipasociacion || ' ' || :OLD.numcolegiado || ' '
            || :OLD.cusualt || ' ' || :OLD.falta THEN
         -- crear registro histórico
         INSERT INTO his_age_asociaciones
                     (cagente, ctipasociacion, numcolegiado, cusualt,
                      falta, cusumod, fusumod)
              VALUES (:OLD.cagente, :OLD.ctipasociacion, :OLD.numcolegiado, :OLD.cusualt,
                      :OLD.falta, f_user, f_sysdate);
      END IF;
   ELSIF DELETING THEN
      -- crear registro histórico
      INSERT INTO his_age_asociaciones
                  (cagente, ctipasociacion, numcolegiado, cusualt,
                   falta, cusumod, fusumod)
           VALUES (:OLD.cagente, :OLD.ctipasociacion, :OLD.numcolegiado, :OLD.cusualt,
                   :OLD.falta, f_user, f_sysdate);
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      NULL;
END trg_age_asociaciones;







/
ALTER TRIGGER "AXIS"."TRG_AGE_ASOCIACIONES" ENABLE;
