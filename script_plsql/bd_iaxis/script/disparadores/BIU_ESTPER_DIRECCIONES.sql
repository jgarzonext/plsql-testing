--------------------------------------------------------
--  DDL for Trigger BIU_ESTPER_DIRECCIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BIU_ESTPER_DIRECCIONES" 
   BEFORE INSERT OR UPDATE
   ON estper_direcciones
   FOR EACH ROW
DECLARE
   num_err        NUMBER;
   format_tnomvia estper_direcciones.tnomvia%TYPE;
   format_tcomple_f estper_direcciones.tcomple%TYPE;
   format_tdomici_f estper_direcciones.tdomici%TYPE;
BEGIN
   IF NVL(f_parinstalacion_n('PERSONAS_MAYUSCULAS'), 0) = 1 THEN
      :NEW.tnomvia := UPPER(:NEW.tnomvia);
      :NEW.tcomple := UPPER(:NEW.tcomple);
      :NEW.tdomici := UPPER(:NEW.tdomici);
   --:NEW.tsiglas := UPPER(:NEW.tsiglas);
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'BIU_ESTPER_DIRECCIONES', 1, 'Error en el trigger: ',
                  SQLERRM);
      RAISE;
END biu_estper_direcciones;









/
ALTER TRIGGER "AXIS"."BIU_ESTPER_DIRECCIONES" ENABLE;
