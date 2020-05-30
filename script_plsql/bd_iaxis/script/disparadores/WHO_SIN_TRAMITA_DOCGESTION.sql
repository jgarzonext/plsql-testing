--------------------------------------------------------
--  DDL for Trigger WHO_SIN_TRAMITA_DOCGESTION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_TRAMITA_DOCGESTION" 
   BEFORE INSERT
   ON sin_tramita_docgestion
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
END;








/
ALTER TRIGGER "AXIS"."WHO_SIN_TRAMITA_DOCGESTION" ENABLE;
