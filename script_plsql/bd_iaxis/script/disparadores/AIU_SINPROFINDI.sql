--------------------------------------------------------
--  DDL for Trigger AIU_SINPROFINDI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."AIU_SINPROFINDI" 
   BEFORE INSERT OR UPDATE
   ON SIN_PROF_INDICADORES    FOR EACH ROW
BEGIN
   IF :OLD.cusualta IS NULL THEN   --ES UN REGISTRO NUEVO
      :NEW.falta := f_sysdate;
      :NEW.cusualta := f_user;
   ELSE
      :NEW.cusumod := f_user;
   END IF;
END;





/
ALTER TRIGGER "AXIS"."AIU_SINPROFINDI" ENABLE;
