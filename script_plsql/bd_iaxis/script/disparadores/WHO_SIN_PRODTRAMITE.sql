--------------------------------------------------------
--  DDL for Trigger WHO_SIN_PRODTRAMITE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_PRODTRAMITE" 
   BEFORE INSERT OR UPDATE
   ON sin_prod_tramite
   FOR EACH ROW
BEGIN
   IF :OLD.ctramte IS NULL THEN   -- (Es insert)
      :NEW.cusualt := NVL(:NEW.cusualt, f_user);
      :NEW.falta := NVL(:NEW.falta, f_sysdate);
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_sin_prodtramite;









/
ALTER TRIGGER "AXIS"."WHO_SIN_PRODTRAMITE" ENABLE;
