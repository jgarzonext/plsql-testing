--------------------------------------------------------
--  DDL for Trigger WHO_SIN_TRAMITA_MOVGESTION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_TRAMITA_MOVGESTION" 
   BEFORE INSERT
   ON sin_tramita_movgestion
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
END;








/
ALTER TRIGGER "AXIS"."WHO_SIN_TRAMITA_MOVGESTION" ENABLE;
