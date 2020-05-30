--------------------------------------------------------
--  DDL for Trigger WHO_PRESTAMOMOVPAGO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_PRESTAMOMOVPAGO" 
   BEFORE INSERT
   ON prestamomovpago
   FOR EACH ROW
BEGIN
   IF :OLD.ctapres IS NULL THEN
      :NEW.cusualt := NVL(:NEW.cusualt, f_user);
      :NEW.falta := NVL(:NEW.falta, f_sysdate);
   END IF;
END who_prestamomovpago;







/
ALTER TRIGGER "AXIS"."WHO_PRESTAMOMOVPAGO" ENABLE;
