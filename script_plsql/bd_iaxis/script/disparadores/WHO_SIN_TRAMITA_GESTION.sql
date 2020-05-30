--------------------------------------------------------
--  DDL for Trigger WHO_SIN_TRAMITA_GESTION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_TRAMITA_GESTION" 
   BEFORE INSERT
   ON sin_tramita_gestion
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
END;








/
ALTER TRIGGER "AXIS"."WHO_SIN_TRAMITA_GESTION" ENABLE;
