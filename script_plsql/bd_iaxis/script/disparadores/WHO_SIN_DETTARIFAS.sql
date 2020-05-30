--------------------------------------------------------
--  DDL for Trigger WHO_SIN_DETTARIFAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_DETTARIFAS" 
   BEFORE INSERT
   ON sin_dettarifas
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
END;








/
ALTER TRIGGER "AXIS"."WHO_SIN_DETTARIFAS" ENABLE;
