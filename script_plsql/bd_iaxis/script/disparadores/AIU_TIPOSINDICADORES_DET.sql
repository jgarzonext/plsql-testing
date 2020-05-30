--------------------------------------------------------
--  DDL for Trigger AIU_TIPOSINDICADORES_DET
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."AIU_TIPOSINDICADORES_DET" 
   BEFORE INSERT OR UPDATE
   ON TIPOS_INDICADORES_DET    FOR EACH ROW
BEGIN
   IF :OLD.cusualta IS NULL THEN   --ES UN REGISTRO NUEVO
      :NEW.falta := f_sysdate;
      :NEW.cusualta := f_user;
   END IF;
END;





/
ALTER TRIGGER "AXIS"."AIU_TIPOSINDICADORES_DET" ENABLE;
