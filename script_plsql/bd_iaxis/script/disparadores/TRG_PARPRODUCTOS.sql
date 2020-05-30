--------------------------------------------------------
--  DDL for Trigger TRG_PARPRODUCTOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PARPRODUCTOS" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON parproductos
   FOR EACH ROW
BEGIN
   IF INSERTING THEN
      -- crear registro histórico
      INSERT INTO his_parproductos
                  (sproduc, cparpro, cvalpar, nagrupa, tvalpar,
                   fvalpar, cusumod, fmodifi, accion)
           VALUES (:NEW.sproduc, :NEW.cparpro, :NEW.cvalpar, :NEW.nagrupa, :NEW.tvalpar,
                   :NEW.fvalpar, f_user, f_sysdate, 'N');
   ELSIF UPDATING THEN
      -- crear registro histórico
      INSERT INTO his_parproductos
                  (sproduc, cparpro, cvalpar, nagrupa, tvalpar,
                   fvalpar, cusumod, fmodifi, accion)
           VALUES (:OLD.sproduc, :OLD.cparpro, :OLD.cvalpar, :OLD.nagrupa, :OLD.tvalpar,
                   :OLD.fvalpar, f_user, f_sysdate, 'U');
   ELSE
      -- crear registro histórico
      INSERT INTO his_parproductos
                  (sproduc, cparpro, cvalpar, nagrupa, tvalpar,
                   fvalpar, cusumod, fmodifi, accion)
           VALUES (:OLD.sproduc, :OLD.cparpro, :OLD.cvalpar, :OLD.nagrupa, :OLD.tvalpar,
                   :OLD.fvalpar, f_user, f_sysdate, 'D');
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_PARPRODUCTOS', 1, SQLCODE, SQLERRM);
END trg_parproductos;





/
ALTER TRIGGER "AXIS"."TRG_PARPRODUCTOS" ENABLE;
