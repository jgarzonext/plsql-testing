--------------------------------------------------------
--  DDL for Trigger TRG_INQUIAVAL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_INQUIAVAL" 
   BEFORE UPDATE OR DELETE
   ON inquiaval
   FOR EACH ROW
BEGIN
   IF UPDATING THEN
      IF (:NEW.sseguro || ' ' || :NEW.sperson || ' ' || :NEW.nriesgo || ' ' || :NEW.nmovimi
          || ' ' || :NEW.ctipfig || ' ' || :NEW.cdomici || ' ' || :NEW.iingrmen || ' '
          || :NEW.iingranual || ' ' || :NEW.ffecini || ' ' || :NEW.ffecfin || ' '
          || :NEW.ctipcontrato || ' ' || :NEW.csitlaboral || ' ' || :NEW.csupfiltro) <>
            (:OLD.sseguro || ' ' || :OLD.sperson || ' ' || :OLD.nriesgo || ' ' || :OLD.nmovimi
             || ' ' || :OLD.ctipfig || ' ' || :OLD.cdomici || ' ' || :OLD.iingrmen || ' '
             || :OLD.iingranual || ' ' || :OLD.ffecini || ' ' || :OLD.ffecfin || ' '
             || :OLD.ctipcontrato || ' ' || :OLD.csitlaboral || ' ' || :OLD.csupfiltro) THEN
         -- crear registro histórico
         INSERT INTO hisinquiaval
                     (sseguro, sperson, nriesgo, nmovimi, ctipfig,
                      cdomici, iingrmen, iingranual, ffecini,
                      ffecfin, ctipcontrato, csitlaboral, csupfiltro,
                      cusuari, fmodif)
              VALUES (:OLD.sseguro, :OLD.sperson, :OLD.nriesgo, :OLD.nmovimi, :OLD.ctipfig,
                      :OLD.cdomici, :OLD.iingrmen, :OLD.iingranual, :OLD.ffecini,
                      :OLD.ffecfin, :OLD.ctipcontrato, :OLD.csitlaboral, :OLD.csupfiltro,
                      f_user, f_sysdate);
      END IF;
   ELSIF DELETING THEN
      -- crear registro histórico
      INSERT INTO hisinquiaval
                  (sseguro, sperson, nriesgo, nmovimi, ctipfig,
                   cdomici, iingrmen, iingranual, ffecini, ffecfin,
                   ctipcontrato, csitlaboral, csupfiltro, cusuari, fmodif)
           VALUES (:OLD.sseguro, :OLD.sperson, :OLD.nriesgo, :OLD.nmovimi, :OLD.ctipfig,
                   :OLD.cdomici, :OLD.iingrmen, :OLD.iingranual, :OLD.ffecini, :OLD.ffecfin,
                   :OLD.ctipcontrato, :OLD.csitlaboral, :OLD.csupfiltro, f_user, f_sysdate);
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_inquiaval', 1, SQLCODE, SQLERRM);
END trg_inquiaval;







/
ALTER TRIGGER "AXIS"."TRG_INQUIAVAL" ENABLE;
