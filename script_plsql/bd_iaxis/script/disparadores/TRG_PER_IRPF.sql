--------------------------------------------------------
--  DDL for Trigger TRG_PER_IRPF
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PER_IRPF" 
   BEFORE DELETE OR UPDATE
   ON PER_IRPF    FOR EACH ROW
DECLARE
   vnorden   hisper_irpf.norden%TYPE;
BEGIN
   IF UPDATING
   THEN
      IF    :NEW.sperson
         || ' '
         || :NEW.csitfam
         || ' '
         || :NEW.cnifcon
         || ' '
         || :NEW.cgrado
         || ' '
         || :NEW.cayuda
         || ' '
         || :NEW.ipension
         || ' '
         || :NEW.ianuhijos
         || ' '
         || :NEW.cusuari
         || ' '
         || :NEW.fmovimi
         || ' '
         || :NEW.prolon
         || ' '
         || :NEW.rmovgeo
         || ' '
         || :NEW.nano
         || ' '
         || :NEW.cagente <>
               :OLD.sperson
            || ' '
            || :OLD.csitfam
            || ' '
            || :OLD.cnifcon
            || ' '
            || :OLD.cgrado
            || ' '
            || :OLD.cayuda
            || ' '
            || :OLD.ipension
            || ' '
            || :OLD.ianuhijos
            || ' '
            || :OLD.cusuari
            || ' '
            || :OLD.fmovimi
            || ' '
            || :OLD.prolon
            || ' '
            || :OLD.rmovgeo
            || ' '
            || :OLD.nano
            || ' '
            || :OLD.cagente
      THEN
         vnorden := pac_persona.f_shisirpf (:OLD.sperson);

         INSERT INTO hisper_irpf
                     (fusumod, cagente, cusumod, norden, sperson,
                      csitfam, cnifcon, cgrado, cayuda,
                      ipension, ianuhijos, cusuari,
                      fmovimi, prolon, rmovgeo, nano
                     )
              VALUES (f_sysdate, :old.cagente,  f_user, vnorden, :OLD.sperson,
                      :OLD.csitfam, :OLD.cnifcon, :OLD.cgrado, :OLD.cayuda,
                      :OLD.ipension, :OLD.ianuhijos, :OLD.cusuari,
                      :OLD.fmovimi, :OLD.prolon, :OLD.rmovgeo, :OLD.nano
                     );
         :NEW.cusuari := f_user;
         :NEW.fmovimi := f_sysdate;
      END IF;
   ELSIF DELETING
   THEN
      vnorden := pac_persona.f_shisirpf (:OLD.sperson);

      INSERT INTO hisper_irpf
                  (fusumod, cagente, cusumod, norden, sperson, csitfam,
                   cnifcon, cgrado, cayuda, ipension,
                   ianuhijos, cusuari, fmovimi, prolon,
                   rmovgeo, nano
                  )
           VALUES (f_sysdate, :old.cagente, f_user, vnorden, :OLD.sperson, :OLD.csitfam,
                   :OLD.cnifcon, :OLD.cgrado, :OLD.cayuda, :OLD.ipension,
                   :OLD.ianuhijos, :OLD.cusuari, :OLD.fmovimi, :OLD.prolon,
                   :OLD.rmovgeo, :OLD.nano
                  );
   END IF;
END;









/
ALTER TRIGGER "AXIS"."TRG_PER_IRPF" ENABLE;
