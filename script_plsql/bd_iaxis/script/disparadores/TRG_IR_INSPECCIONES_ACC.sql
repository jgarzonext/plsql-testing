--------------------------------------------------------
--  DDL for Trigger TRG_IR_INSPECCIONES_ACC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_IR_INSPECCIONES_ACC" 
   BEFORE DELETE OR UPDATE
   ON ir_inspecciones_acc
   FOR EACH ROW
DECLARE
   --Trigger para pasar a histórico los registros modificados o eliminados.
   vcusumod       ir_inspecciones.cusumod%TYPE;
   vfmodifi       ir_inspecciones.fmodifi%TYPE;
BEGIN
   IF :NEW.caccesorio || ' ' || :NEW.ctipacc || ' ' || :NEW.tdesacc || ' ' || :NEW.ivalacc
      || ' ' || :NEW.casegurable <> :OLD.caccesorio || ' ' || :OLD.ctipacc || ' '
                                    || :OLD.tdesacc || ' ' || :OLD.ivalacc || ' '
                                    || :OLD.casegurable THEN
      IF UPDATING THEN
         vcusumod := :NEW.cusumod;
         vfmodifi := :NEW.fmodifi;
      ELSE
         vcusumod := :OLD.cusumod;
         vfmodifi := :OLD.fmodifi;
      END IF;

      -- crear registro histórico
      INSERT INTO hir_inspecciones_acc
                  (cempres, sorden, ninspeccion, caccesorio, ctipacc,
                   tdesacc, ivalacc, casegurable, falta, cusualt,
                   fmodifi, cusumod, fhist, cusuhist)
           VALUES (:OLD.cempres, :OLD.sorden, :OLD.ninspeccion, :OLD.caccesorio, :OLD.ctipacc,
                   :OLD.tdesacc, :OLD.ivalacc, :OLD.casegurable, :OLD.falta, :OLD.cusualt,
                   vfmodifi, vcusumod, f_sysdate, f_user);
   END IF;

   IF UPDATING THEN
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_ir_inspecciones_acc', 1, SQLCODE, SQLERRM);
END trg_ir_inspecciones_acc;







/
ALTER TRIGGER "AXIS"."TRG_IR_INSPECCIONES_ACC" ENABLE;
