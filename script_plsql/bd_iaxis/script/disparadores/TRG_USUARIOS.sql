--------------------------------------------------------
--  DDL for Trigger TRG_USUARIOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_USUARIOS" 
   AFTER UPDATE OR DELETE
   ON usuarios
   FOR EACH ROW
DECLARE
BEGIN
   IF :NEW.cusuari <> :OLD.cusuari
      OR :NEW.cidioma <> :OLD.cidioma
      OR :NEW.cempres <> :OLD.cempres
      OR :NEW.tusunom <> :OLD.tusunom
      OR :NEW.tpcpath <> :OLD.tpcpath
      OR :NEW.cdelega <> :OLD.cdelega
      OR :NEW.cprovin <> :OLD.cprovin
      OR :NEW.cpoblac <> :OLD.cpoblac
      OR :NEW.cvistas <> :OLD.cvistas
      OR :NEW.cweb <> :OLD.cweb
      OR :NEW.repserver <> :OLD.repserver
      OR :NEW.ejecucion <> :OLD.ejecucion
      OR :NEW.sperson <> :OLD.sperson
      OR :NEW.fbaja <> :OLD.fbaja
      OR :NEW.ctipusu <> :OLD.ctipusu
      OR :NEW.cagecob <> :OLD.cagecob
      OR :NEW.copcion <> :OLD.copcion
      OR :NEW.tpwd <> :OLD.tpwd
      OR :NEW.falta <> :OLD.falta
      OR :NEW.cusubbdd <> :OLD.cusubbdd
      OR :NEW.cautlog <> :OLD.cautlog
      OR :NEW.cempleado <> :OLD.cempleado
      OR :NEW.cterminal <> :OLD.cterminal
      OR :NEW.cusubaja <> :OLD.cusubaja THEN
      INSERT INTO his_usuarios
                  (cusuari, cidioma, cempres, tusunom, tpcpath,
                   cdelega, cprovin, cpoblac, cvistas, cweb,
                   repserver, ejecucion, sperson, fbaja, ctipusu,
                   cagecob, copcion, tpwd, falta, cusubbdd,
                   cautlog, cempleado, cterminal, cusubaja, fmodif,
                   cusumod)
           VALUES (:OLD.cusuari, :OLD.cidioma, :OLD.cempres, :OLD.tusunom, :OLD.tpcpath,
                   :OLD.cdelega, :OLD.cprovin, :OLD.cpoblac, :OLD.cvistas, :OLD.cweb,
                   :OLD.repserver, :OLD.ejecucion, :OLD.sperson, :OLD.fbaja, :OLD.ctipusu,
                   :OLD.cagecob, :OLD.copcion, :OLD.tpwd, :OLD.falta, :OLD.cusubbdd,
                   :OLD.cautlog, :OLD.cempleado, :OLD.cterminal, :OLD.cusubaja, f_sysdate,
                   f_user);
   END IF;
END;









/
ALTER TRIGGER "AXIS"."TRG_USUARIOS" ENABLE;
