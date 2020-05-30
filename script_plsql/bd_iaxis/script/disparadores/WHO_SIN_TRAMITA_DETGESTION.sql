--------------------------------------------------------
--  DDL for Trigger WHO_SIN_TRAMITA_DETGESTION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_TRAMITA_DETGESTION" 
   BEFORE INSERT
   ON sin_tramita_detgestion
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
END;







/
ALTER TRIGGER "AXIS"."WHO_SIN_TRAMITA_DETGESTION" ENABLE;
