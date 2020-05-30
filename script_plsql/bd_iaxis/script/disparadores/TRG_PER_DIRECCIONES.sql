--------------------------------------------------------
--  DDL for Trigger TRG_PER_DIRECCIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PER_DIRECCIONES" 
   BEFORE UPDATE OR DELETE
   ON per_direcciones
   FOR EACH ROW
DECLARE
   vnorden        hisper_direcciones.norden%TYPE;
BEGIN
   -- Bug 18940/92686 - 27/09/2011 - AMC - Se añaden los nuevos campos de per_direcciones
   IF UPDATING THEN
      IF :NEW.sperson || ' ' || :NEW.cagente || ' ' || :NEW.cdomici || ' ' || :NEW.ctipdir
         || ' ' || :NEW.csiglas || ' ' || :NEW.tnomvia || ' ' || :NEW.nnumvia || ' '
         || :NEW.tcomple || ' ' || :NEW.tdomici || ' ' || :NEW.cpostal || ' ' || :NEW.cpoblac
         || ' ' || :NEW.cprovin || ' ' || :NEW.cviavp || ' ' || :NEW.clitvp || ' '
         || :NEW.cbisvp || ' ' || :NEW.corvp || ' ' || :NEW.nviaadco || ' ' || :NEW.clitco
         || ' ' || :NEW.corco || ' ' || :NEW.nplacaco || ' ' || :NEW.cor2co || ' '
         || :NEW.cdet1ia || ' ' || :NEW.tnum1ia || ' ' || :NEW.cdet2ia || ' ' || :NEW.tnum2ia
         || ' ' || :NEW.cdet3ia || ' ' || :NEW.tnum3ia <>
            :OLD.sperson || ' ' || :OLD.cagente || ' ' || :OLD.cdomici || ' ' || :OLD.ctipdir
            || ' ' || :OLD.csiglas || ' ' || :OLD.tnomvia || ' ' || :OLD.nnumvia || ' '
            || :OLD.tcomple || ' ' || :OLD.tdomici || ' ' || :OLD.cpostal || ' '
            || :OLD.cpoblac || ' ' || :OLD.cprovin || ' ' || :OLD.cviavp || ' ' || :OLD.clitvp
            || ' ' || :OLD.cbisvp || ' ' || :OLD.corvp || ' ' || :OLD.nviaadco || ' '
            || :OLD.clitco || ' ' || :OLD.corco || ' ' || :OLD.nplacaco || ' ' || :OLD.cor2co
            || ' ' || :OLD.cdet1ia || ' ' || :OLD.tnum1ia || ' ' || :OLD.cdet2ia || ' '
            || :OLD.tnum2ia || ' ' || :OLD.cdet3ia || ' ' || :OLD.tnum3ia THEN
         vnorden := pac_persona.f_shisdir(:OLD.sperson, :OLD.cdomici);

         INSERT INTO hisper_direcciones
                     (sperson, cagente, cdomici, norden, ctipdir,
                      csiglas, tnomvia, nnumvia, tcomple, tdomici,
                      cpostal, cpoblac, cprovin, cusuari, cviavp,
                      clitvp, cbisvp, corvp, nviaadco, clitco,
                      corco, nplacaco, cor2co, cdet1ia, tnum1ia,
                      cdet2ia, tnum2ia, cdet3ia, tnum3ia, fmovimi,
                      cusumod, fusumod)
              VALUES (:OLD.sperson, :OLD.cagente, :OLD.cdomici, vnorden, :OLD.ctipdir,
                      :OLD.csiglas, :OLD.tnomvia, :OLD.nnumvia, :OLD.tcomple, :OLD.tdomici,
                      :OLD.cpostal, :OLD.cpoblac, :OLD.cprovin, :OLD.cusuari, :OLD.cviavp,
                      :OLD.clitvp, :OLD.cbisvp, :OLD.corvp, :OLD.nviaadco, :OLD.clitco,
                      :OLD.corco, :OLD.nplacaco, :OLD.cor2co, :OLD.cdet1ia, :OLD.tnum1ia,
                      :OLD.cdet2ia, :OLD.tnum2ia, :OLD.cdet3ia, :OLD.tnum3ia, :OLD.fmovimi,
                      f_user, f_sysdate);

         :NEW.cusuari := f_user;
         :NEW.fmovimi := f_sysdate;
      END IF;
   ELSIF DELETING THEN
      vnorden := pac_persona.f_shisdir(:OLD.sperson, :OLD.cdomici);

      INSERT INTO hisper_direcciones
                  (sperson, cagente, cdomici, norden, ctipdir,
                   csiglas, tnomvia, nnumvia, tcomple, tdomici,
                   cpostal, cpoblac, cprovin, cusuari, cviavp,
                   clitvp, cbisvp, corvp, nviaadco, clitco,
                   corco, nplacaco, cor2co, cdet1ia, tnum1ia,
                   cdet2ia, tnum2ia, cdet3ia, tnum3ia, fmovimi,
                   cusumod, fusumod)
           VALUES (:OLD.sperson, :OLD.cagente, :OLD.cdomici, vnorden, :OLD.ctipdir,
                   :OLD.csiglas, :OLD.tnomvia, :OLD.nnumvia, :OLD.tcomple, :OLD.tdomici,
                   :OLD.cpostal, :OLD.cpoblac, :OLD.cprovin, :OLD.cusuari, :OLD.cviavp,
                   :OLD.clitvp, :OLD.cbisvp, :OLD.corvp, :OLD.nviaadco, :OLD.clitco,
                   :OLD.corco, :OLD.nplacaco, :OLD.cor2co, :OLD.cdet1ia, :OLD.tnum1ia,
                   :OLD.cdet2ia, :OLD.tnum2ia, :OLD.cdet3ia, :OLD.tnum3ia, :OLD.fmovimi,
                   f_user, f_sysdate);
   END IF;
END;








/
ALTER TRIGGER "AXIS"."TRG_PER_DIRECCIONES" ENABLE;
