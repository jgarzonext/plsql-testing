--------------------------------------------------------
--  DDL for Trigger BU_PRESTAMOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BU_PRESTAMOS" 
   BEFORE UPDATE
   ON prestamos
   FOR EACH ROW
DECLARE
   v_shisprestamos NUMBER;
BEGIN
   IF :NEW.itasa <> :OLD.itasa THEN
      SELECT shisprestamos.NEXTVAL
        INTO v_shisprestamos
        FROM DUAL;

      INSERT INTO his_prestamos
                  (shispres, ctapres, icapini, ctipamort, ctipint,
                   ctippres, falta, fbaja, fcarpro, ilimite,
                   cestado, itasa, ctipban, cbancar, cforpag,
                   fcontab, icapini_moncia, fcambio, cusuhis, faltahis)
           VALUES (v_shisprestamos, :OLD.ctapres, :OLD.icapini, :OLD.ctipamort, :OLD.ctipint,
                   :OLD.ctippres, :OLD.falta, :OLD.fbaja, :OLD.fcarpro, :OLD.ilimite,
                   :OLD.cestado, :OLD.itasa, :OLD.ctipban, :OLD.cbancar, :OLD.cforpag,
                   :OLD.fcontab, :OLD.icapini_moncia, :OLD.fcambio, f_user, f_sysdate);
   END IF;
END bu_recibos;





/
ALTER TRIGGER "AXIS"."BU_PRESTAMOS" ENABLE;
