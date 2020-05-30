--------------------------------------------------------
--  DDL for Trigger TRG_PER_PERSONAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PER_PERSONAS" 
   BEFORE UPDATE
   ON per_personas
   FOR EACH ROW
DECLARE
   vnorden        hisper_personas.norden%TYPE;
BEGIN
   IF :NEW.sperson || ' ' || :NEW.nnumide || ' ' || :NEW.nordide || ' ' || :NEW.ctipide || ' '
      || :NEW.csexper || ' ' || :NEW.fnacimi || ' ' || :NEW.cestper || ' ' || :NEW.fjubila
      || ' ' || :NEW.ctipper || ' ' || :NEW.fdefunc || ' ' || :NEW.swpubli || ' ' || :NEW.snip
      || ' ' || :NEW.tdigitoide || ' ' || :NEW.cpreaviso || ' ' || :NEW.cagente || ' '
      || :NEW.cusualt || ' ' || :NEW.falta <> :OLD.sperson || ' ' || :OLD.nnumide || ' '
                                              || :OLD.nordide || ' ' || :OLD.ctipide || ' '
                                              || :OLD.csexper || ' ' || :OLD.fnacimi || ' '
                                              || :OLD.cestper || ' ' || :OLD.fjubila || ' '
                                              || :OLD.ctipper || ' ' || :OLD.fdefunc || ' '
                                              || :OLD.swpubli || ' ' || :OLD.snip || ' '
                                              || :OLD.tdigitoide || ' ' || :OLD.cpreaviso
                                              || ' ' || :OLD.cagente || ' ' || :OLD.cusualt
                                              || ' ' || :OLD.falta THEN
      vnorden := pac_persona.f_shisper(:OLD.sperson);

      INSERT INTO hisper_personas
                  (sperson, norden, nnumide, nordide, ctipide,
                   csexper, fnacimi, cestper, fjubila, ctipper,
                   cusuari, fmovimi, cusumod, fusumod, cmutualista,
                   fdefunc, snip, swpubli, tdigitoide, cpreaviso,
                   cagente, cusualt, falta)
           VALUES (:OLD.sperson, vnorden, :OLD.nnumide, :OLD.nordide, :OLD.ctipide,
                   :OLD.csexper, :OLD.fnacimi, :OLD.cestper, :OLD.fjubila, :OLD.ctipper,
                   :OLD.cusuari, :OLD.fmovimi, f_user, f_sysdate, :OLD.cmutualista,
                   :OLD.fdefunc, :OLD.snip, :OLD.swpubli, :OLD.tdigitoide, :OLD.cpreaviso,
                   :OLD.cagente, :OLD.cusualt, :OLD.falta);

      :NEW.cusuari := f_user;
      :NEW.fmovimi := f_sysdate;
   END IF;
END;





/
ALTER TRIGGER "AXIS"."TRG_PER_PERSONAS" ENABLE;
