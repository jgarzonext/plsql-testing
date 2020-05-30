--------------------------------------------------------
--  DDL for Trigger TRG_PER_NACIONALIDADES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PER_NACIONALIDADES" 
   BEFORE UPDATE OR DELETE
   ON per_nacionalidades
   FOR EACH ROW
BEGIN
   IF UPDATING THEN
      IF :NEW.cpais || ' ' || :NEW.cdefecto <> :OLD.cpais || ' ' || :OLD.cdefecto THEN
         INSERT INTO hisper_nacionalidades
                     (sperson, cagente, cpais, cdefecto, fmovimi, cusualt)
              VALUES (:OLD.sperson, :OLD.cagente, :OLD.cpais, :OLD.cdefecto, f_sysdate, f_user);
      --:NEW.CUSUARI := f_user;
      --:NEW.FMOVIMI := f_sysdate;
      END IF;
   ELSIF DELETING THEN
      INSERT INTO hisper_nacionalidades
                  (sperson, cagente, cpais, cdefecto, fmovimi, cusualt)
           VALUES (:OLD.sperson, :OLD.cagente, :OLD.cpais, :OLD.cdefecto, f_sysdate, f_user);
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      NULL;
END;









/
ALTER TRIGGER "AXIS"."TRG_PER_NACIONALIDADES" ENABLE;
