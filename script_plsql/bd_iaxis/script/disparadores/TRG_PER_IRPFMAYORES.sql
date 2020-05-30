--------------------------------------------------------
--  DDL for Trigger TRG_PER_IRPFMAYORES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PER_IRPFMAYORES" 
   BEFORE DELETE OR UPDATE
   ON PER_IRPFMAYORES    FOR EACH ROW
DECLARE
   vnorden    HISPER_IRPFMAYORES.norden%TYPE;
BEGIN
   IF UPDATING THEN
      IF
            :NEW.FNACIMI|| ' ' || :NEW.CGRADO|| ' ' ||  :NEW.crenta|| ' ' ||
            :NEW.nviven || ' ' || :NEW.CUSUARI|| ' ' ||  :NEW.FMOVIMI || ' ' || :new.nano
    <>
            :OLD.FNACIMI|| ' ' || :OLD.CGRADO|| ' ' ||  :OLD.crenta|| ' ' ||
            :OLD.nviven || ' ' || :OLD.CUSUARI|| ' ' ||  :OLD.FMOVIMI || ' ' || :OLD.nano

   THEN

          INSERT INTO HISPER_IRPFMAYORES (
            FUSUMOD, CUSUMOD, NORDEN,
            SPERSON, FNACIMI, CGRADO,
            CRENTA, NVIVEN, CUSUARI,
            FMOVIMI, nano, CAGENTE )
         VALUES ( f_sysdate, f_user, :OLD.NORDEN,
            :OLD.SPERSON, :OLD.FNACIMI, :OLD.CGRADO,
            :OLD.CRENTA, :OLD.NVIVEN, :OLD.CUSUARI,
            :OLD.FMOVIMI, :old.nano, :OLD.CAGENTE );

         :NEW.cusuari := f_user;
         :NEW.fmovimi := f_sysdate;
      END IF;

   ELSIF DELETING THEN

          INSERT INTO HISPER_IRPFMAYORES (
            FUSUMOD, CUSUMOD, NORDEN,
            SPERSON, FNACIMI, CGRADO,
            CRENTA, NVIVEN, CUSUARI,
            FMOVIMI, nano, CAGENTE )
         VALUES ( f_sysdate, f_user, :OLD.NORDEN,
            :OLD.SPERSON, :OLD.FNACIMI, :OLD.CGRADO,
            :OLD.CRENTA, :OLD.NVIVEN, :OLD.CUSUARI,
            :OLD.FMOVIMI, :old.nano, :OLD.CAGENTE);

   END IF;
END;









/
ALTER TRIGGER "AXIS"."TRG_PER_IRPFMAYORES" ENABLE;
