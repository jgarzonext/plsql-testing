--------------------------------------------------------
--  DDL for Trigger WHO_SUP_SOLICITUD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SUP_SOLICITUD" 
   BEFORE INSERT OR UPDATE
   ON sup_solicitud
   FOR EACH ROW
BEGIN
   IF :OLD.sseguro IS NULL THEN   -- (Es insert)
      :NEW.cususol := f_user;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_sup_solicitud;









/
ALTER TRIGGER "AXIS"."WHO_SUP_SOLICITUD" ENABLE;
