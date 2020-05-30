--------------------------------------------------------
--  DDL for Trigger WHO_SIN_TARIFAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_TARIFAS" 
   BEFORE INSERT
   ON sin_tarifas
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
END;








/
ALTER TRIGGER "AXIS"."WHO_SIN_TARIFAS" ENABLE;
