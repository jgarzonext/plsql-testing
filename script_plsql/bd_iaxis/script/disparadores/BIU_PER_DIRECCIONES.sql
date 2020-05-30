--------------------------------------------------------
--  DDL for Trigger BIU_PER_DIRECCIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BIU_PER_DIRECCIONES" 
   BEFORE INSERT OR UPDATE
   ON per_direcciones
   FOR EACH ROW
BEGIN
   IF NVL(f_parinstalacion_n('PERSONAS_MAYUSCULAS'), 0) = 1 THEN
      :NEW.tnomvia := UPPER(:NEW.tnomvia);
      :NEW.tcomple := UPPER(:NEW.tcomple);
      :NEW.tdomici := UPPER(:NEW.tdomici);
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'BIU_PER_DIRECCIONES', 1, 'Error en el trigger: ',
                  SQLERRM);
      RAISE;
END biu_per_direcciones;









/
ALTER TRIGGER "AXIS"."BIU_PER_DIRECCIONES" ENABLE;
