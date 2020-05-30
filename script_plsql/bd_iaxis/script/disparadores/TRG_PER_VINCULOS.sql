--------------------------------------------------------
--  DDL for Trigger TRG_PER_VINCULOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PER_VINCULOS" 
BEFORE DELETE OR UPDATE ON PER_VINCULOS FOR EACH ROW
DECLARE
  vnorden HISPER_VINCULOS.norden%TYPE;
BEGIN

  IF UPDATING THEN
    IF :NEW.SPERSON || ' ' || :NEW.CAGENTE || ' ' || :NEW.CVINCLO || ' ' ||
       :NEW.CUSUARI || ' ' || :NEW.FMOVIMI
       <>
       :OLD.SPERSON || ' ' || :OLD.CAGENTE || ' ' || :OLD.CVINCLO || ' ' ||
       :OLD.CUSUARI || ' ' || :OLD.FMOVIMI THEN

      vnorden := Pac_Persona.f_shisvin(:OLD.sperson);

      INSERT INTO HISPER_VINCULOS(SPERSON, CAGENTE, CVINCLO, NORDEN,
                                  CUSUARI, FMOVIMI, CUSUMOD, FUSUMOD)
        VALUES(:OLD.sperson,  :OLD.cagente, :OLD.CVINCLO, vnorden,
              :OLD.cusuari, :OLD.fmovimi, f_sysdate, f_user);

      :NEW.CUSUARI := f_user;
      :NEW.FMOVIMI := f_sysdate;
    END IF;
  ELSIF DELETING THEN
    vnorden := Pac_Persona.f_shisvin(:OLD.sperson);

    INSERT INTO HISPER_VINCULOS(SPERSON, CAGENTE, cvinclo, NORDEN,
                                CUSUARI, FMOVIMI, CUSUMOD, FUSUMOD)
      VALUES(:OLD.sperson, :OLD.cagente, :OLD.cvinclo, vnorden,
              :OLD.cusuari, :OLD.fmovimi, f_user, f_sysdate);
  END IF;
END;









/
ALTER TRIGGER "AXIS"."TRG_PER_VINCULOS" ENABLE;
