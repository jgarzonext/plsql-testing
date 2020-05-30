--------------------------------------------------------
--  DDL for Trigger TRG_PREGUNPROGARAN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PREGUNPROGARAN" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON pregunprogaran
   FOR EACH ROW
BEGIN
   IF INSERTING THEN
      -- crear registro histórico
      INSERT INTO his_pregunprogaran
                  (sproduc, cactivi, cgarant, cpregun, cpretip,
                   npreord, tprefor, cpreobl, npreimp, cresdef,
                   cofersn, ctabla, tvalfor, esccero, visiblecol,
                   visiblecert, cvisible, cmodo, cusumod, fmodifi, accion)
           VALUES (:NEW.sproduc, :NEW.cactivi, :NEW.cgarant, :NEW.cpregun, :NEW.cpretip,
                   :NEW.npreord, :NEW.tprefor, :NEW.cpreobl, :NEW.npreimp, :NEW.cresdef,
                   :NEW.cofersn, :NEW.ctabla, :NEW.tvalfor, :NEW.esccero, :NEW.visiblecol,
                   :NEW.visiblecert, :NEW.cvisible, :NEW.cmodo, f_user, f_sysdate, 'N');
   ELSIF UPDATING THEN
      -- crear registro histórico
      INSERT INTO his_pregunprogaran
                  (sproduc, cactivi, cgarant, cpregun, cpretip,
                   npreord, tprefor, cpreobl, npreimp, cresdef,
                   cofersn, ctabla, tvalfor, esccero, visiblecol,
                   visiblecert, cvisible, cmodo, cusumod, fmodifi, accion)
           VALUES (:OLD.sproduc, :OLD.cactivi, :OLD.cgarant, :OLD.cpregun, :OLD.cpretip,
                   :OLD.npreord, :OLD.tprefor, :OLD.cpreobl, :OLD.npreimp, :OLD.cresdef,
                   :OLD.cofersn, :OLD.ctabla, :OLD.tvalfor, :OLD.esccero, :OLD.visiblecol,
                   :OLD.visiblecert, :OLD.cvisible, :OLD.cmodo, f_user, f_sysdate, 'U');
   ELSE
      -- crear registro histórico
      INSERT INTO his_pregunprogaran
                  (sproduc, cactivi, cgarant, cpregun, cpretip,
                   npreord, tprefor, cpreobl, npreimp, cresdef,
                   cofersn, ctabla, tvalfor, esccero, visiblecol,
                   visiblecert, cvisible, cmodo, cusumod, fmodifi, accion)
           VALUES (:OLD.sproduc, :OLD.cactivi, :OLD.cgarant, :OLD.cpregun, :OLD.cpretip,
                   :OLD.npreord, :OLD.tprefor, :OLD.cpreobl, :OLD.npreimp, :OLD.cresdef,
                   :OLD.cofersn, :OLD.ctabla, :OLD.tvalfor, :OLD.esccero, :OLD.visiblecol,
                   :OLD.visiblecert, :OLD.cvisible, :OLD.cmodo, f_user, f_sysdate, 'D');
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_PREGUNPROGARAN', 1, SQLCODE, SQLERRM);
END trg_pregunprogaran;





/
ALTER TRIGGER "AXIS"."TRG_PREGUNPROGARAN" ENABLE;
