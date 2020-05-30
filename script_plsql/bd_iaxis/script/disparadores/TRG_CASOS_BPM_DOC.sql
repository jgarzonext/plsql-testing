--------------------------------------------------------
--  DDL for Trigger TRG_CASOS_BPM_DOC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_CASOS_BPM_DOC" 
   BEFORE DELETE OR UPDATE
   ON casos_bpm_doc
   FOR EACH ROW
DECLARE
   --Trigger para pasar a histórico los registros modificados o eliminados.
   vcusumod       casos_bpm.cusumod%TYPE;
   vfmodifi       casos_bpm.fmodifi%TYPE;
BEGIN
   IF :NEW.cdocume || ' ' || :NEW.cestadodoc || ' ' || :NEW.iddoc || ' '
      || TO_CHAR(:NEW.fbaja, 'YYYYMMDD') <> :OLD.cdocume || ' ' || :OLD.cestadodoc || ' '
                                            || :OLD.iddoc || ' '
                                            || TO_CHAR(:OLD.fbaja, 'YYYYMMDD') THEN
      IF UPDATING THEN
         vcusumod := :NEW.cusumod;
         vfmodifi := :NEW.fmodifi;
      ELSE
         vcusumod := :OLD.cusumod;
         vfmodifi := :OLD.fmodifi;
      END IF;

      -- crear registro histórico
      INSERT INTO hcasos_bpm_doc
                  (cempres, nnumcaso, idgestordocbpm, fhist, cdocume,
                   cestadodoc, iddoc, falta, fbaja, cusualt,
                   fmodifi, cusumod)
           VALUES (:OLD.cempres, :OLD.nnumcaso, :OLD.idgestordocbpm, f_sysdate, :OLD.cdocume,
                   :OLD.cestadodoc, :OLD.iddoc, :OLD.falta, :OLD.fbaja, :OLD.cusualt,
                   vfmodifi, vcusumod);
   END IF;

   IF UPDATING THEN
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER TRG_CASOS_BPM_DOC', 1, SQLCODE, SQLERRM);
END trg_casos_bpm_doc;






/
ALTER TRIGGER "AXIS"."TRG_CASOS_BPM_DOC" ENABLE;
