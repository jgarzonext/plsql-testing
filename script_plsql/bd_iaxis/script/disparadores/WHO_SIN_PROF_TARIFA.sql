--------------------------------------------------------
--  DDL for Trigger WHO_SIN_PROF_TARIFA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_PROF_TARIFA" 
   BEFORE INSERT
   ON sin_prof_tarifa
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
END;








/
ALTER TRIGGER "AXIS"."WHO_SIN_PROF_TARIFA" ENABLE;
