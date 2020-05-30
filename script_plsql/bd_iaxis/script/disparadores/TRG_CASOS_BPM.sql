--------------------------------------------------------
--  DDL for Trigger TRG_CASOS_BPM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_CASOS_BPM" 
   BEFORE DELETE OR UPDATE
   ON casos_bpm
   FOR EACH ROW
DECLARE
   --Trigger para pasar a histórico los registros modificados o eliminados.
   vcusumod       casos_bpm.cusumod%TYPE;
   vfmodifi       casos_bpm.fmodifi%TYPE;
BEGIN
   IF :NEW.cusuasignado || ' ' || :NEW.ctipoproceso || ' ' || :NEW.cestado || ' '
      || :NEW.cestadoenvio || ' ' || :NEW.sproduc || ' ' || :NEW.cmotmov || ' '
      || :NEW.ctipide || ' ' || :NEW.nnumide || ' ' || :NEW.tnomcom || ' ' || :NEW.npoliza
      || ' ' || :NEW.ncertif || ' ' || :NEW.nmovimi || ' ' || :NEW.nnumcasop || ' '
      || :NEW.ncaso_bpm || ' ' || :NEW.nsolici_bpm || ' ' || :NEW.ctipmov_bpm || ' '
      || :NEW.caprobada_bpm || ' ' || TO_CHAR(:NEW.fbaja, 'YYYYMMDD') <>
         :OLD.cusuasignado || ' ' || :OLD.ctipoproceso || ' ' || :OLD.cestado || ' '
         || :OLD.cestadoenvio || ' ' || :OLD.sproduc || ' ' || :OLD.cmotmov || ' '
         || :OLD.ctipide || ' ' || :OLD.nnumide || ' ' || :OLD.tnomcom || ' ' || :OLD.npoliza
         || ' ' || :OLD.ncertif || ' ' || :OLD.nmovimi || ' ' || :OLD.nnumcasop || ' '
         || :OLD.ncaso_bpm || ' ' || :OLD.nsolici_bpm || ' ' || :OLD.ctipmov_bpm || ' '
         || :OLD.caprobada_bpm || ' ' || TO_CHAR(:OLD.fbaja, 'YYYYMMDD') THEN
      IF UPDATING THEN
         vcusumod := :NEW.cusumod;
         vfmodifi := :NEW.fmodifi;
      ELSE
         vcusumod := :OLD.cusumod;
         vfmodifi := :OLD.fmodifi;
      END IF;

      -- crear registro histórico
      INSERT INTO hcasos_bpm
                  (cempres, nnumcaso, fhist, cusuasignado,
                   ctipoproceso, cestado, cestadoenvio, falta, fbaja,
                   cusualt, fmodifi, cusumod, sproduc, cmotmov, ctipide,
                   nnumide, tnomcom, npoliza, ncertif, nmovimi,
                   nnumcasop, ncaso_bpm, nsolici_bpm, ctipmov_bpm,
                   caprobada_bpm)
           VALUES (:OLD.cempres, :OLD.nnumcaso, f_sysdate, :OLD.cusuasignado,
                   :OLD.ctipoproceso, :OLD.cestado, :OLD.cestadoenvio, :OLD.falta, :OLD.fbaja,
                   :OLD.cusualt, vfmodifi, vcusumod, :OLD.sproduc, :OLD.cmotmov, :OLD.ctipide,
                   :OLD.nnumide, :OLD.tnomcom, :OLD.npoliza, :OLD.ncertif, :OLD.nmovimi,
                   :OLD.nnumcasop, :OLD.ncaso_bpm, :OLD.nsolici_bpm, :OLD.ctipmov_bpm,
                   :OLD.caprobada_bpm);
   END IF;

   IF UPDATING THEN
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_casos_bpm', 1, SQLCODE, SQLERRM);
END trg_casos_bpm;






/
ALTER TRIGGER "AXIS"."TRG_CASOS_BPM" ENABLE;
