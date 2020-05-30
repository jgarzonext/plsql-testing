--------------------------------------------------------
--  DDL for Trigger TRG_PER_IRPFDESCEN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PER_IRPFDESCEN" 
   BEFORE DELETE OR UPDATE
   ON PER_IRPFDESCEN    FOR EACH ROW
DECLARE
   vnorden    HISPER_IRPFDESCEN.norden%TYPE;
BEGIN
   IF UPDATING THEN
      IF
            :NEW.FNACIMI|| ' ' ||  :NEW.CGRADO|| ' ' ||
            :NEW.CENTER|| ' ' || :NEW.CUSUARI|| ' ' ||  :NEW.FMOVIMI || ' '|| :new.nano
    <>
            :OLD.FNACIMI|| ' ' || :OLD.CGRADO|| ' ' ||
            :OLD.CENTER|| ' ' || :OLD.CUSUARI|| ' ' ||  :OLD.FMOVIMI || ' '|| :old.nano

   THEN

        INSERT INTO HISPER_IRPFDESCEN (
           FUSUMOD, CUSUMOD, NORDEN,
           SPERSON, FNACIMI, CGRADO,
           CENTER, CUSUARI, FMOVIMI, NANO, CAGENTE )
        VALUES (f_sysdate, f_user, :OLD.NORDEN,
            :OLD.SPERSON,  :OLD.FNACIMI,  :OLD.CGRADO,
            :OLD.CENTER,  :OLD.CUSUARI,  :OLD.FMOVIMI, :OLD.NANO, :OLD.CAGENTE) ;

         :NEW.cusuari := f_user;
         :NEW.fmovimi := f_sysdate;
      END IF;
   ELSIF DELETING THEN
        INSERT INTO HISPER_IRPFDESCEN (
           FUSUMOD, CUSUMOD, NORDEN,
           SPERSON, FNACIMI, CGRADO,
           CENTER, CUSUARI, FMOVIMI, NANO, CAGENTE )
        VALUES (f_sysdate, f_user, :OLD.NORDEN,
            :OLD.SPERSON,  :OLD.FNACIMI,  :OLD.CGRADO,
            :OLD.CENTER,  :OLD.CUSUARI,  :OLD.FMOVIMI, :OLD.NANO, :OLD.CAGENTE ) ;
   END IF;
END;









/
ALTER TRIGGER "AXIS"."TRG_PER_IRPFDESCEN" ENABLE;
