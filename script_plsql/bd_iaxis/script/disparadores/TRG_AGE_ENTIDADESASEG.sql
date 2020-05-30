--------------------------------------------------------
--  DDL for Trigger TRG_AGE_ENTIDADESASEG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_AGE_ENTIDADESASEG" 
   BEFORE UPDATE OR DELETE
   ON age_entidadesaseg
   FOR EACH ROW
BEGIN
   IF UPDATING THEN
      IF :NEW.cagente || ' ' || :NEW.ctipentidadaseg || ' ' || :NEW.cusualt || ' '
         || :NEW.falta <> :OLD.cagente || ' ' || :OLD.ctipentidadaseg || ' ' || :OLD.cusualt
                          || ' ' || :OLD.falta THEN
         -- crear registro histórico
         INSERT INTO his_age_entidadesaseg
                     (cagente, ctipentidadaseg, cusualt, falta, cusumod,
                      fusumod)
              VALUES (:OLD.cagente, :OLD.ctipentidadaseg, :OLD.cusualt, :OLD.falta, f_user,
                      f_sysdate);
      END IF;
   ELSIF DELETING THEN
      -- crear registro histórico
      INSERT INTO his_age_entidadesaseg
                  (cagente, ctipentidadaseg, cusualt, falta, cusumod,
                   fusumod)
           VALUES (:OLD.cagente, :OLD.ctipentidadaseg, :OLD.cusualt, :OLD.falta, f_user,
                   f_sysdate);
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      NULL;
END trg_age_entidadesaseg;







/
ALTER TRIGGER "AXIS"."TRG_AGE_ENTIDADESASEG" ENABLE;
