--------------------------------------------------------
--  DDL for Trigger WHO_SIN_TRAMITA_PAGO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_TRAMITA_PAGO" 
   BEFORE INSERT OR UPDATE
   ON sin_tramita_pago
   FOR EACH ROW
BEGIN
   IF :OLD.nsinies IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_sin_tramita_pago;









/
ALTER TRIGGER "AXIS"."WHO_SIN_TRAMITA_PAGO" ENABLE;
