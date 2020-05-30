--------------------------------------------------------
--  DDL for Trigger WHO_SIN_PROTRAMITACION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_PROTRAMITACION" 
   BEFORE INSERT OR UPDATE
   ON sin_pro_tramitacion
   FOR EACH ROW
BEGIN
   IF :OLD.sproduc IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_sin_protramitacion;









/
ALTER TRIGGER "AXIS"."WHO_SIN_PROTRAMITACION" ENABLE;
