--------------------------------------------------------
--  DDL for Trigger TRG_IR_ORDENES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_IR_ORDENES" 
   BEFORE DELETE OR UPDATE
   ON ir_ordenes
   FOR EACH ROW
DECLARE
   --Trigger para pasar a histórico los registros modificados o eliminados.
   vcusumod       ir_ordenes.cusumod%TYPE;
   vfmodifi       ir_ordenes.fmodifi%TYPE;
BEGIN
   IF :NEW.fsolicitud || ' ' || :NEW.ctiporiesgo || ' ' || :NEW.cestado || ' ' || :NEW.cclase
      || ' ' || :NEW.sproduc || ' ' || :NEW.ctipmat || ' ' || :NEW.cmatric || ' '
      || :NEW.codmotor || ' ' || :NEW.cchasis || ' ' || :NEW.nbastid || ' ' || :NEW.nordenext <>
         :OLD.fsolicitud || ' ' || :OLD.ctiporiesgo || ' ' || :OLD.cestado || ' '
         || :OLD.cclase || ' ' || :OLD.sproduc || ' ' || :OLD.ctipmat || ' ' || :OLD.cmatric
         || ' ' || :OLD.codmotor || ' ' || :OLD.cchasis || ' ' || :OLD.nbastid || ' '
         || :OLD.nordenext THEN
      IF UPDATING THEN
         vcusumod := :NEW.cusumod;
         vfmodifi := :NEW.fmodifi;
      ELSE
         vcusumod := :OLD.cusumod;
         vfmodifi := :OLD.fmodifi;
      END IF;

      -- crear registro histórico
      INSERT INTO hir_ordenes
                  (cempres, sorden, fsolicitud, ctiporiesgo, cestado,
                   cclase, sproduc, ctipmat, cmatric, codmotor,
                   cchasis, nbastid, falta, cusualt, fmodifi, cusumod,
                   fhist, cusuhist, nordenext)
           VALUES (:OLD.cempres, :OLD.sorden, :OLD.fsolicitud, :OLD.ctiporiesgo, :OLD.cestado,
                   :OLD.cclase, :OLD.sproduc, :OLD.ctipmat, :OLD.cmatric, :OLD.codmotor,
                   :OLD.cchasis, :OLD.nbastid, :OLD.falta, :OLD.cusualt, vfmodifi, vcusumod,
                   f_sysdate, f_user, :OLD.nordenext);
   END IF;

   IF UPDATING THEN
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_ir_ordenes', 1, SQLCODE, SQLERRM);
END trg_ir_ordenes;







/
ALTER TRIGGER "AXIS"."TRG_IR_ORDENES" ENABLE;
