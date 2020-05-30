--------------------------------------------------------
--  DDL for Trigger TRG_AGE_DOCUMENTOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_AGE_DOCUMENTOS" 
   BEFORE UPDATE OR DELETE
   ON age_documentos
   FOR EACH ROW
DECLARE
--Trigger para pasar a histórico los registros modificados o eliminados.
   vcusuari       age_documentos.cusuari%TYPE;
   vfmovimi       age_documentos.fmovimi%TYPE;
BEGIN
   IF :NEW.cagente || ' ' || :NEW.iddocgedox || ' ' || :NEW.fcaduca || ' ' || :NEW.tobserva
      || ' ' || :NEW.tamano || ' ' || :NEW.cusualt || ' ' || :NEW.falta || ' ' || :NEW.cusuari
      || ' ' || :NEW.fmovimi <> :OLD.cagente || ' ' || :OLD.iddocgedox || ' ' || :OLD.fcaduca
                                || ' ' || :OLD.tobserva || ' ' || :OLD.tamano || ' '
                                || :OLD.cusualt || ' ' || :OLD.falta || ' ' || :OLD.cusuari
                                || ' ' || :OLD.fmovimi THEN
      IF UPDATING THEN
         vcusuari := :NEW.cusuari;
         vfmovimi := :NEW.fmovimi;
      ELSE
         vcusuari := :OLD.cusuari;
         vfmovimi := :OLD.fmovimi;
      END IF;

      INSERT INTO hisage_documentos
                  (cagente, iddocgedox, fcaduca, tobserva, tamano,
                   cusualt, falta, cusuari, fmovimi, cusumod, fusumod)
           VALUES (:OLD.cagente, :OLD.iddocgedox, :OLD.fcaduca, :OLD.tobserva, :OLD.tamano,
                   :OLD.cusualt, :OLD.falta, vcusuari, vfmovimi, f_user, f_sysdate);
   END IF;
END;







/
ALTER TRIGGER "AXIS"."TRG_AGE_DOCUMENTOS" ENABLE;
