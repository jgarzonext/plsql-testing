--------------------------------------------------------
--  DDL for Trigger TRG_PER_DOCUMENTOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PER_DOCUMENTOS" 
   BEFORE UPDATE OR DELETE
   ON per_documentos
   FOR EACH ROW
DECLARE
--Trigger para pasar a histórico los registros modificados o eliminados.
   vcusuari       per_documentos.cusuari%TYPE;
   vfmovimi       per_documentos.fmovimi%TYPE;
BEGIN
   IF :NEW.sperson || ' ' || :NEW.cagente || ' ' || :NEW.iddocgedox || ' ' || :NEW.fcaduca
      || ' ' || :NEW.tobserva || ' ' || :NEW.cusualt || ' ' || :NEW.falta || ' '
      || :NEW.cusuari || ' ' || :NEW.fmovimi <> :OLD.sperson || ' ' || :OLD.cagente || ' '
                                                || :OLD.iddocgedox || ' ' || :OLD.fcaduca
                                                || ' ' || :OLD.tobserva || ' ' || :OLD.cusualt
                                                || ' ' || :OLD.falta || ' ' || :OLD.cusuari
                                                || ' ' || :OLD.fmovimi THEN
      IF UPDATING THEN
         vcusuari := :NEW.cusuari;
         vfmovimi := :NEW.fmovimi;
      ELSE
         vcusuari := :OLD.cusuari;
         vfmovimi := :OLD.fmovimi;
      END IF;

      INSERT INTO hisper_documentos
                  (sperson, cagente, iddocgedox, fcaduca, tobserva,
                   cusualt, falta, cusuari, fmovimi, cusumod, fusumod)
           VALUES (:OLD.sperson, :OLD.cagente, :OLD.iddocgedox, :OLD.fcaduca, :OLD.tobserva,
                   :OLD.cusualt, :OLD.falta, vcusuari, vfmovimi, f_user, f_sysdate);
   END IF;
END;







/
ALTER TRIGGER "AXIS"."TRG_PER_DOCUMENTOS" ENABLE;
