--------------------------------------------------------
--  DDL for Trigger TRG_IR_INSPECCIONES_DVEH
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_IR_INSPECCIONES_DVEH" 
   BEFORE DELETE OR UPDATE
   ON ir_inspecciones_dveh
   FOR EACH ROW
DECLARE
   --Trigger para pasar a histórico los registros modificados o eliminados.
   vcusumod       ir_inspecciones_dveh.cusumod%TYPE;
   vfmodifi       ir_inspecciones_dveh.fmodifi%TYPE;
BEGIN
   IF :NEW.cversion || ' ' || :NEW.cpaisorigen || ' ' || :NEW.npma || ' ' || :NEW.ccilindraje
      || ' ' || :NEW.anyo || ' ' || :NEW.nplazas || ' ' || :NEW.cservicio || ' '
      || :NEW.cblindado || ' ' || :NEW.ccampero || ' ' || :NEW.cgama || ' ' || :NEW.cmatcabina
      || ' ' || :NEW.ivehinue || ' ' || :NEW.cuso || ' ' || :NEW.ccolor || ' '
      || :NEW.nkilometraje || ' ' || :NEW.ctipmotor || ' ' || :NEW.ntara || ' '
      || :NEW.cpintura || ' ' || :NEW.ccaja || ' ' || :NEW.ctransporte || ' '
      || :NEW.ctipcarroceria <> :OLD.cversion || ' ' || :OLD.cpaisorigen || ' ' || :OLD.npma
                                || ' ' || :OLD.ccilindraje || ' ' || :OLD.anyo || ' '
                                || :OLD.nplazas || ' ' || :OLD.cservicio || ' '
                                || :OLD.cblindado || ' ' || :OLD.ccampero || ' ' || :OLD.cgama
                                || ' ' || :OLD.cmatcabina || ' ' || :OLD.ivehinue || ' '
                                || :OLD.cuso || ' ' || :OLD.ccolor || ' ' || :OLD.nkilometraje
                                || ' ' || :OLD.ctipmotor || ' ' || :OLD.ntara || ' '
                                || :OLD.cpintura || ' ' || :OLD.ccaja || ' '
                                || :OLD.ctransporte || ' ' || :OLD.ctipcarroceria THEN
      IF UPDATING THEN
         vcusumod := :NEW.cusumod;
         vfmodifi := :NEW.fmodifi;
      ELSE
         vcusumod := :OLD.cusumod;
         vfmodifi := :OLD.fmodifi;
      END IF;

      -- crear registro histórico
      INSERT INTO hir_inspecciones_dveh
                  (cempres, sorden, ninspeccion, cversion,
                   cpaisorigen, npma, ccilindraje, anyo, nplazas,
                   cservicio, cblindado, ccampero, cgama, cmatcabina,
                   ivehinue, cuso, ccolor, nkilometraje, ctipmotor,
                   ntara, cpintura, ccaja, ctransporte,
                   ctipcarroceria, falta, cusualt, fmodifi, cusumod,
                   fhist, cusuhist)
           VALUES (:OLD.cempres, :OLD.sorden, :OLD.ninspeccion, :OLD.cversion,
                   :OLD.cpaisorigen, :OLD.npma, :OLD.ccilindraje, :OLD.anyo, :OLD.nplazas,
                   :OLD.cservicio, :OLD.cblindado, :OLD.ccampero, :OLD.cgama, :OLD.cmatcabina,
                   :OLD.ivehinue, :OLD.cuso, :OLD.ccolor, :OLD.nkilometraje, :OLD.ctipmotor,
                   :OLD.ntara, :OLD.cpintura, :OLD.ccaja, :OLD.ctransporte,
                   :OLD.ctipcarroceria, :OLD.falta, :OLD.cusualt, vfmodifi, vcusumod,
                   f_sysdate, f_user);
   END IF;

   IF UPDATING THEN
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_ir_inspecciones_dveh', 1, SQLCODE, SQLERRM);
END trg_ir_inspecciones_dveh;







/
ALTER TRIGGER "AXIS"."TRG_IR_INSPECCIONES_DVEH" ENABLE;
