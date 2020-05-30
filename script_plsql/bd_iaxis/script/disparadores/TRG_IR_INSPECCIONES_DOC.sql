--------------------------------------------------------
--  DDL for Trigger TRG_IR_INSPECCIONES_DOC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_IR_INSPECCIONES_DOC" 
   BEFORE DELETE OR UPDATE
   ON ir_inspecciones_doc
   FOR EACH ROW
DECLARE
   --Trigger para pasar a histórico los registros modificados o eliminados.
   vcusumod       ir_inspecciones.cusumod%TYPE;
   vfmodifi       ir_inspecciones.fmodifi%TYPE;
BEGIN
   IF :NEW.ndocume || ' ' || :NEW.cdocume || ' ' || :NEW.cgenerado || ' ' || :NEW.cobliga
      || ' ' || :NEW.cadjuntado || ' ' || :NEW.iddocgedox <>
         :OLD.ndocume || ' ' || :OLD.cdocume || ' ' || :OLD.cgenerado || ' ' || :OLD.cobliga
         || ' ' || :OLD.cadjuntado || ' ' || :OLD.iddocgedox THEN
      IF UPDATING THEN
         vcusumod := :NEW.cusumod;
         vfmodifi := :NEW.fmodifi;
      ELSE
         vcusumod := :OLD.cusumod;
         vfmodifi := :OLD.fmodifi;
      END IF;

      -- crear registro histórico
      INSERT INTO hir_inspecciones_doc
                  (cempres, sorden, ninspeccion, ndocume, cdocume,
                   cgenerado, cobliga, cadjuntado, iddocgedox, falta,
                   cusualt, fmodifi, cusumod, fhist, cusuhist)
           VALUES (:OLD.cempres, :OLD.sorden, :OLD.ninspeccion, :OLD.ndocume, :OLD.cdocume,
                   :OLD.cgenerado, :OLD.cobliga, :OLD.cadjuntado, :OLD.iddocgedox, :OLD.falta,
                   :OLD.cusualt, vfmodifi, vcusumod, f_sysdate, f_user);
   END IF;

   IF UPDATING THEN
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_ir_inspecciones_doc', 1, SQLCODE, SQLERRM);
END trg_ir_inspecciones_doc;







/
ALTER TRIGGER "AXIS"."TRG_IR_INSPECCIONES_DOC" ENABLE;
