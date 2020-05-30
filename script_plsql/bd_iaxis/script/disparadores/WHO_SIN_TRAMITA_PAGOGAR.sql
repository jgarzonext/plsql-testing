--------------------------------------------------------
--  DDL for Trigger WHO_SIN_TRAMITA_PAGOGAR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_TRAMITA_PAGOGAR" 
   BEFORE INSERT OR UPDATE
   ON sin_tramita_pago_gar
   FOR EACH ROW
BEGIN
   IF :OLD.sidepag IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_sin_tramita_pago;









/
ALTER TRIGGER "AXIS"."WHO_SIN_TRAMITA_PAGOGAR" ENABLE;
