--------------------------------------------------------
--  DDL for Trigger TRG_IMPREC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_IMPREC" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON imprec
   FOR EACH ROW
BEGIN
   IF INSERTING THEN
      -- crear registro histórico
      INSERT INTO his_imprec
                  (cconcep, nconcep, cempres, cforpag, cramo,
                   cmodali, ctipseg, ccolect, cactivi, cgarant,
                   finivig, ffinvig, ctipcon, nvalcon, cfracci,
                   cbonifi, crecfra, climite, cmoneda, cderreg,
                   cusumod, fmodifi, accion)
           VALUES (:NEW.cconcep, :NEW.nconcep, :NEW.cempres, :NEW.cforpag, :NEW.cramo,
                   :NEW.cmodali, :NEW.ctipseg, :NEW.ccolect, :NEW.cactivi, :NEW.cgarant,
                   :NEW.finivig, :NEW.ffinvig, :NEW.ctipcon, :NEW.nvalcon, :NEW.cfracci,
                   :NEW.cbonifi, :NEW.crecfra, :NEW.climite, :NEW.cmoneda, :NEW.cderreg,
                   f_user, f_sysdate, 'N');
   ELSIF UPDATING THEN
      -- crear registro histórico
      INSERT INTO his_imprec
                  (cconcep, nconcep, cempres, cforpag, cramo,
                   cmodali, ctipseg, ccolect, cactivi, cgarant,
                   finivig, ffinvig, ctipcon, nvalcon, cfracci,
                   cbonifi, crecfra, climite, cmoneda, cderreg,
                   cusumod, fmodifi, accion)
           VALUES (:OLD.cconcep, :OLD.nconcep, :OLD.cempres, :OLD.cforpag, :OLD.cramo,
                   :OLD.cmodali, :OLD.ctipseg, :OLD.ccolect, :OLD.cactivi, :OLD.cgarant,
                   :OLD.finivig, :OLD.ffinvig, :OLD.ctipcon, :OLD.nvalcon, :OLD.cfracci,
                   :OLD.cbonifi, :OLD.crecfra, :OLD.climite, :OLD.cmoneda, :OLD.cderreg,
                   f_user, f_sysdate, 'U');
   ELSE
      -- crear registro histórico
      INSERT INTO his_imprec
                  (cconcep, nconcep, cempres, cforpag, cramo,
                   cmodali, ctipseg, ccolect, cactivi, cgarant,
                   finivig, ffinvig, ctipcon, nvalcon, cfracci,
                   cbonifi, crecfra, climite, cmoneda, cderreg,
                   cusumod, fmodifi, accion)
           VALUES (:OLD.cconcep, :OLD.nconcep, :OLD.cempres, :OLD.cforpag, :OLD.cramo,
                   :OLD.cmodali, :OLD.ctipseg, :OLD.ccolect, :OLD.cactivi, :OLD.cgarant,
                   :OLD.finivig, :OLD.ffinvig, :OLD.ctipcon, :OLD.nvalcon, :OLD.cfracci,
                   :OLD.cbonifi, :OLD.crecfra, :OLD.climite, :OLD.cmoneda, :OLD.cderreg,
                   f_user, f_sysdate, 'D');
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_IMPREC', 1, SQLCODE, SQLERRM);
END trg_imprec;





/
ALTER TRIGGER "AXIS"."TRG_IMPREC" ENABLE;
