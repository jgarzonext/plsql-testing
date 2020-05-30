--------------------------------------------------------
--  DDL for Trigger TRG_HISPRESTAREN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HISPRESTAREN" 
   BEFORE DELETE OR UPDATE
   ON prestaren
   FOR EACH ROW
DECLARE
   vnorden        hisprestaren.norden%TYPE;
BEGIN
   SELECT NVL(MAX(norden), 0) + 1
     INTO vnorden
     FROM hisprestaren
    WHERE nsinies = :OLD.nsinies
      AND sperson = :OLD.sperson
      AND ntramit = :OLD.ntramit
      AND ctipdes = :OLD.ctipdes;

   IF UPDATING THEN
      IF :NEW.nsinies || ' ' || :NEW.sperson || ' ' || :NEW.sseguro || ' ' || :NEW.f1paren
         || ' ' || :NEW.fuparen || ' ' || :NEW.cforpag || ' ' || :NEW.ibruren || ' '
         || :NEW.ffinren || ' ' || :NEW.cestado || ' ' || :NEW.cmotivo || ' ' || :NEW.fppren
         || ' ' || :NEW.crevali || ' ' || :NEW.prevali || ' ' || :NEW.irevali || ' '
         || :NEW.cblopag || ' ' || :NEW.ctipdur || ' ' || :NEW.npartot || ' '
         || :NEW.npartpend || ' ' || :NEW.ctipban || ' ' || :NEW.cbancar || ' '
         || :NEW.nmesextra || ' ' || :NEW.ntramit || ' ' || :NEW.ctipdes || ' '
         || :NEW.cmonpag || ' ' || :NEW.ibruren_pag || ' ' || :NEW.npresta <>
            :OLD.nsinies || ' ' || :OLD.sperson || ' ' || :OLD.sseguro || ' ' || :OLD.f1paren
            || ' ' || :OLD.fuparen || ' ' || :OLD.cforpag || ' ' || :OLD.ibruren || ' '
            || :OLD.ffinren || ' ' || :OLD.cestado || ' ' || :OLD.cmotivo || ' '
            || :OLD.fppren || ' ' || :OLD.crevali || ' ' || :OLD.prevali || ' '
            || :OLD.irevali || ' ' || :OLD.cblopag || ' ' || :OLD.ctipdur || ' '
            || :OLD.npartot || ' ' || :OLD.npartpend || ' ' || :OLD.ctipban || ' '
            || :OLD.cbancar || ' ' || :OLD.nmesextra || ' ' || :OLD.ntramit || ' '
            || :OLD.ctipdes || ' ' || :OLD.cmonpag || ' ' || :OLD.ibruren_pag || ' '
            || :OLD.npresta THEN
         INSERT INTO hisprestaren
                     (nsinies, sperson, sseguro, f1paren, fuparen,
                      cforpag, ibruren, ffinren, cestado, cmotivo,
                      fppren, crevali, prevali, irevali, cblopag,
                      ctipdur, npartot, npartpend, ctipban, cbancar,
                      nmesextra, ntramit, ctipdes, cmonpag,
                      ibruren_pag, cusumod, fusumod, norden, npresta)
              VALUES (:OLD.nsinies, :OLD.sperson, :OLD.sseguro, :OLD.f1paren, :OLD.fuparen,
                      :OLD.cforpag, :OLD.ibruren, :OLD.ffinren, :OLD.cestado, :OLD.cmotivo,
                      :OLD.fppren, :OLD.crevali, :OLD.prevali, :OLD.irevali, :OLD.cblopag,
                      :OLD.ctipdur, :OLD.npartot, :OLD.npartpend, :OLD.ctipban, :OLD.cbancar,
                      :OLD.nmesextra, :OLD.ntramit, :OLD.ctipdes, :OLD.cmonpag,
                      :OLD.ibruren_pag, f_user, f_sysdate, vnorden, :OLD.npresta);
      END IF;
   ELSIF DELETING THEN
      INSERT INTO hisprestaren
                  (nsinies, sperson, sseguro, f1paren, fuparen,
                   cforpag, ibruren, ffinren, cestado, cmotivo,
                   fppren, crevali, prevali, irevali, cblopag,
                   ctipdur, npartot, npartpend, ctipban, cbancar,
                   nmesextra, ntramit, ctipdes, cmonpag,
                   ibruren_pag, cusumod, fusumod, norden, npresta)
           VALUES (:OLD.nsinies, :OLD.sperson, :OLD.sseguro, :OLD.f1paren, :OLD.fuparen,
                   :OLD.cforpag, :OLD.ibruren, :OLD.ffinren, :OLD.cestado, :OLD.cmotivo,
                   :OLD.fppren, :OLD.crevali, :OLD.prevali, :OLD.irevali, :OLD.cblopag,
                   :OLD.ctipdur, :OLD.npartot, :OLD.npartpend, :OLD.ctipban, :OLD.cbancar,
                   :OLD.nmesextra, :OLD.ntramit, :OLD.ctipdes, :OLD.cmonpag,
                   :OLD.ibruren_pag, f_user, f_sysdate, vnorden, :OLD.npresta);
   END IF;
END;





/
ALTER TRIGGER "AXIS"."TRG_HISPRESTAREN" ENABLE;
