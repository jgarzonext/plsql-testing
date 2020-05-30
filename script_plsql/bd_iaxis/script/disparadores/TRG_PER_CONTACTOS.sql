--------------------------------------------------------
--  DDL for Trigger TRG_PER_CONTACTOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PER_CONTACTOS" 
   BEFORE DELETE OR UPDATE
   ON per_contactos
   FOR EACH ROW
DECLARE
   vnorden        hisper_contactos.norden%TYPE;
BEGIN
   IF UPDATING THEN
      IF :NEW.sperson || ' ' || :NEW.cagente || ' ' || :NEW.cmodcon || ' ' || :NEW.ctipcon
         || ' ' || :NEW.tcomcon || ' ' || :NEW.tvalcon || ' ' || :NEW.cdomici <>
            :OLD.sperson || ' ' || :OLD.cagente || ' ' || :OLD.cmodcon || ' ' || :OLD.ctipcon
            || ' ' || :OLD.tcomcon || ' ' || :OLD.tvalcon || ' ' || :OLD.cdomici THEN
         vnorden := pac_persona.f_shiscon(:OLD.sperson, :OLD.cmodcon);

         INSERT INTO hisper_contactos
                     (sperson, cagente, cmodcon, norden, ctipcon,
                      tcomcon, tvalcon, cdomici, cusuari, fmovimi,
                      cusumod, fusumod)
              VALUES (:OLD.sperson, :OLD.cagente, :OLD.cmodcon, vnorden, :OLD.ctipcon,
                      :OLD.tcomcon, :OLD.tvalcon, :OLD.cdomici, :OLD.cusuari, :OLD.fmovimi,
                      f_user, f_sysdate);

         :NEW.cusuari := f_user;
         :NEW.fmovimi := f_sysdate;
      END IF;
   ELSIF DELETING THEN
      vnorden := pac_persona.f_shiscon(:OLD.sperson, :OLD.cmodcon);

      INSERT INTO hisper_contactos
                  (sperson, cagente, cmodcon, norden, ctipcon,
                   tcomcon, tvalcon, cdomici, cusuari, fmovimi,
                   cusumod, fusumod)
           VALUES (:OLD.sperson, :OLD.cagente, :OLD.cmodcon, vnorden, :OLD.ctipcon,
                   :OLD.tcomcon, :OLD.tvalcon, :OLD.cdomici, :OLD.cusuari, :OLD.fmovimi,
                   f_user, f_sysdate);
   END IF;
END;







/
ALTER TRIGGER "AXIS"."TRG_PER_CONTACTOS" ENABLE;
