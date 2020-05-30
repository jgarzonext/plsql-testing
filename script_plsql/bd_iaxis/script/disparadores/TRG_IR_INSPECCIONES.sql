--------------------------------------------------------
--  DDL for Trigger TRG_IR_INSPECCIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_IR_INSPECCIONES" 
   BEFORE DELETE OR UPDATE
   ON ir_inspecciones
   FOR EACH ROW
DECLARE
   --Trigger para pasar a histórico los registros modificados o eliminados.
   vcusumod       ir_inspecciones.cusumod%TYPE;
   vfmodifi       ir_inspecciones.fmodifi%TYPE;
BEGIN
   IF :NEW.finspeccion || ' ' || :NEW.cestado || ' ' || :NEW.cresultado || ' '
      || :NEW.creinspeccion || ' ' || :NEW.hllegada || ' ' || :NEW.hsalida || ' '
      || :NEW.ccentroinsp || ' ' || :NEW.cinspdomi || ' ' || :NEW.cpista <>
         :OLD.finspeccion || ' ' || :OLD.cestado || ' ' || :OLD.cresultado || ' '
         || :OLD.creinspeccion || ' ' || :OLD.hllegada || ' ' || :OLD.hsalida || ' '
         || :OLD.ccentroinsp || ' ' || :OLD.cinspdomi || ' ' || :OLD.cpista THEN
      IF UPDATING THEN
         vcusumod := :NEW.cusumod;
         vfmodifi := :NEW.fmodifi;
      ELSE
         vcusumod := :OLD.cusumod;
         vfmodifi := :OLD.fmodifi;
      END IF;

      -- crear registro histórico
      INSERT INTO hir_inspecciones
                  (cempres, sorden, ninspeccion, finspeccion,
                   cestado, cresultado, creinspeccion, hllegada,
                   hsalida, ccentroinsp, cinspdomi, cpista, falta,
                   cusualt, fmodifi, cusumod, fhist, cusuhist)
           VALUES (:OLD.cempres, :OLD.sorden, :OLD.ninspeccion, :OLD.finspeccion,
                   :OLD.cestado, :OLD.cresultado, :OLD.creinspeccion, :OLD.hllegada,
                   :OLD.hsalida, :OLD.ccentroinsp, :OLD.cinspdomi, :OLD.cpista, :OLD.falta,
                   :OLD.cusualt, vfmodifi, vcusumod, f_sysdate, f_user);
   END IF;

   IF UPDATING THEN
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_ir_inspecciones', 1, SQLCODE, SQLERRM);
END trg_ir_inspecciones;







/
ALTER TRIGGER "AXIS"."TRG_IR_INSPECCIONES" ENABLE;
