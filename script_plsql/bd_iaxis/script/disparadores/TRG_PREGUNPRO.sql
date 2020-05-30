--------------------------------------------------------
--  DDL for Trigger TRG_PREGUNPRO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PREGUNPRO" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON pregunpro
   FOR EACH ROW
BEGIN
   IF INSERTING THEN
      -- crear registro histórico
      INSERT INTO his_pregunpro
                  (cpregun, cmodali, ccolect, cramo, ctipseg,
                   sproduc, cpretip, npreord, tprefor, cpreobl,
                   npreimp, cresdef, cofersn, ctabla, tvalfor,
                   cmodo, cnivel, ctarpol, cvisible, esccero,
                   visiblecol, visiblecert, crecarg, cusumod, fmodifi, accion)
           VALUES (:NEW.cpregun, :NEW.cmodali, :NEW.ccolect, :NEW.cramo, :NEW.ctipseg,
                   :NEW.sproduc, :NEW.cpretip, :NEW.npreord, :NEW.tprefor, :NEW.cpreobl,
                   :NEW.npreimp, :NEW.cresdef, :NEW.cofersn, :NEW.ctabla, :NEW.tvalfor,
                   :NEW.cmodo, :NEW.cnivel, :NEW.ctarpol, :NEW.cvisible, :NEW.esccero,
                   :NEW.visiblecol, :NEW.visiblecert, :NEW.crecarg, f_user, f_sysdate, 'N');
   ELSIF UPDATING THEN
      -- crear registro histórico
      INSERT INTO his_pregunpro
                  (cpregun, cmodali, ccolect, cramo, ctipseg,
                   sproduc, cpretip, npreord, tprefor, cpreobl,
                   npreimp, cresdef, cofersn, ctabla, tvalfor,
                   cmodo, cnivel, ctarpol, cvisible, esccero,
                   visiblecol, visiblecert, crecarg, cusumod, fmodifi, accion)
           VALUES (:OLD.cpregun, :OLD.cmodali, :OLD.ccolect, :OLD.cramo, :OLD.ctipseg,
                   :OLD.sproduc, :OLD.cpretip, :OLD.npreord, :OLD.tprefor, :OLD.cpreobl,
                   :OLD.npreimp, :OLD.cresdef, :OLD.cofersn, :OLD.ctabla, :OLD.tvalfor,
                   :OLD.cmodo, :OLD.cnivel, :OLD.ctarpol, :OLD.cvisible, :OLD.esccero,
                   :OLD.visiblecol, :OLD.visiblecert, :OLD.crecarg, f_user, f_sysdate, 'U');
   ELSE
      -- crear registro histórico
      INSERT INTO his_pregunpro
                  (cpregun, cmodali, ccolect, cramo, ctipseg,
                   sproduc, cpretip, npreord, tprefor, cpreobl,
                   npreimp, cresdef, cofersn, ctabla, tvalfor,
                   cmodo, cnivel, ctarpol, cvisible, esccero,
                   visiblecol, visiblecert, crecarg, cusumod, fmodifi, accion)
           VALUES (:OLD.cpregun, :OLD.cmodali, :OLD.ccolect, :OLD.cramo, :OLD.ctipseg,
                   :OLD.sproduc, :OLD.cpretip, :OLD.npreord, :OLD.tprefor, :OLD.cpreobl,
                   :OLD.npreimp, :OLD.cresdef, :OLD.cofersn, :OLD.ctabla, :OLD.tvalfor,
                   :OLD.cmodo, :OLD.cnivel, :OLD.ctarpol, :OLD.cvisible, :OLD.esccero,
                   :OLD.visiblecol, :OLD.visiblecert, :OLD.crecarg, f_user, f_sysdate, 'D');
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_PREGUNPRO', 1, SQLCODE, SQLERRM);
END trg_pregunpro;





/
ALTER TRIGGER "AXIS"."TRG_PREGUNPRO" ENABLE;
