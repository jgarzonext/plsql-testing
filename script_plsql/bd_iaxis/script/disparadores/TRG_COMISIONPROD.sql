--------------------------------------------------------
--  DDL for Trigger TRG_COMISIONPROD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_COMISIONPROD" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON comisionprod
   FOR EACH ROW
BEGIN
   IF INSERTING THEN
      -- crear registro histórico
      INSERT INTO his_comisionprod
                  (cramo, cmodali, ctipseg, ccolect, ccomisi,
                   cmodcom, pcomisi, sproduc, finivig, falta,
                   cusualta, fmodifi, cusumod, ninialt, nfinalt, accion)
           VALUES (:NEW.cramo, :NEW.cmodali, :NEW.ctipseg, :NEW.ccolect, :NEW.ccomisi,
                   :NEW.cmodcom, :NEW.pcomisi, :NEW.sproduc, :NEW.finivig, :NEW.falta,
                   :NEW.cusualta, f_sysdate, f_user, :NEW.ninialt, :NEW.nfinalt, 'N');
   ELSIF UPDATING THEN
      -- crear registro histórico
      INSERT INTO his_comisionprod
                  (cramo, cmodali, ctipseg, ccolect, ccomisi,
                   cmodcom, pcomisi, sproduc, finivig, falta,
                   cusualta, fmodifi, cusumod, ninialt, nfinalt, accion)
           VALUES (:OLD.cramo, :OLD.cmodali, :OLD.ctipseg, :OLD.ccolect, :OLD.ccomisi,
                   :OLD.cmodcom, :OLD.pcomisi, :OLD.sproduc, :OLD.finivig, :OLD.falta,
                   :OLD.cusualta, f_sysdate, f_user, :OLD.ninialt, :OLD.nfinalt, 'U');
   ELSE
      -- crear registro histórico
      INSERT INTO his_comisionprod
                  (cramo, cmodali, ctipseg, ccolect, ccomisi,
                   cmodcom, pcomisi, sproduc, finivig, falta,
                   cusualta, fmodifi, cusumod, ninialt, nfinalt, accion)
           VALUES (:OLD.cramo, :OLD.cmodali, :OLD.ctipseg, :OLD.ccolect, :OLD.ccomisi,
                   :OLD.cmodcom, :OLD.pcomisi, :OLD.sproduc, :OLD.finivig, :OLD.falta,
                   :OLD.cusualta, f_sysdate, f_user, :OLD.ninialt, :OLD.nfinalt, 'D');
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_COMISIONPROD', 1, SQLCODE, SQLERRM);
END trg_comisionprod;





/
ALTER TRIGGER "AXIS"."TRG_COMISIONPROD" ENABLE;
