--------------------------------------------------------
--  DDL for Trigger TRG_AGE_REFERENCIAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_AGE_REFERENCIAS" 
   BEFORE UPDATE OR DELETE
   ON age_referencias
   FOR EACH ROW
BEGIN
   IF UPDATING THEN
      IF :NEW.cagente || ' ' || :NEW.nordreferencia || ' ' || :NEW.treferencia || ' '
         || :NEW.cusualt || ' ' || :NEW.falta <>
            :OLD.cagente || ' ' || :OLD.nordreferencia || ' ' || :OLD.treferencia || ' '
            || :OLD.cusualt || ' ' || :OLD.falta THEN
         -- crear registro histórico
         INSERT INTO his_age_referencias
                     (cagente, nordreferencia, treferencia, cusualt,
                      falta, cusumod, fusumod)
              VALUES (:OLD.cagente, :OLD.nordreferencia, :OLD.treferencia, :OLD.cusualt,
                      :OLD.falta, f_user, f_sysdate);
      END IF;
   ELSIF DELETING THEN
      -- crear registro histórico
      INSERT INTO his_age_referencias
                  (cagente, nordreferencia, treferencia, cusualt,
                   falta, cusumod, fusumod)
           VALUES (:OLD.cagente, :OLD.nordreferencia, :OLD.treferencia, :OLD.cusualt,
                   :OLD.falta, f_user, f_sysdate);
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      NULL;
END trg_age_referencias;







/
ALTER TRIGGER "AXIS"."TRG_AGE_REFERENCIAS" ENABLE;
