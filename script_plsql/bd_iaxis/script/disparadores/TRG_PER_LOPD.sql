--------------------------------------------------------
--  DDL for Trigger TRG_PER_LOPD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PER_LOPD" 
   BEFORE DELETE OR UPDATE
   ON per_lopd
   FOR EACH ROW
DECLARE
   vnorden        hisper_lopd.norden%TYPE;
BEGIN
   IF UPDATING THEN
      IF :NEW.cestado || ' ' || :NEW.cesion || ' ' || :NEW.publicidad || ' '
         || :NEW.cancelacion || ' ' || :NEW.ctipdoc || ' ' || :NEW.ftipdoc || ' '
         || :NEW.catendido || ' ' || :NEW.fatendido <>
            :OLD.cestado || ' ' || :OLD.cesion || ' ' || :OLD.publicidad || ' '
            || :OLD.cancelacion || ' ' || :OLD.ctipdoc || ' ' || :OLD.ftipdoc || ' '
            || :OLD.catendido || ' ' || :OLD.fatendido THEN
         vnorden := pac_persona.f_shislopd(:OLD.sperson);

         INSERT INTO hisper_lopd
                     (sperson, norden, fmovimi, cusuari, cestado,
                      cesion, publicidad, cancelacion, ctipdoc,
                      ftipdoc, catendido, fatendido, cusumod, fusumod)
              VALUES (:OLD.sperson, vnorden, :OLD.fmovimi, :OLD.cusuari, :OLD.cestado,
                      :OLD.cesion, :OLD.publicidad, :OLD.cancelacion, :OLD.ctipdoc,
                      :OLD.ftipdoc, :OLD.catendido, :OLD.fatendido, f_user, f_sysdate);
      END IF;
   ELSIF DELETING THEN
      vnorden := pac_persona.f_shislopd(:OLD.sperson);

      INSERT INTO hisper_lopd
                  (sperson, norden, fmovimi, cusuari, cestado,
                   cesion, publicidad, cancelacion, ctipdoc,
                   ftipdoc, catendido, fatendido, cusumod, fusumod)
           VALUES (:OLD.sperson, vnorden, :OLD.fmovimi, :OLD.cusuari, :OLD.cestado,
                   :OLD.cesion, :OLD.publicidad, :OLD.cancelacion, :OLD.ctipdoc,
                   :OLD.ftipdoc, :OLD.catendido, :OLD.fatendido, f_user, f_sysdate);
   END IF;
END;







/
ALTER TRIGGER "AXIS"."TRG_PER_LOPD" ENABLE;
