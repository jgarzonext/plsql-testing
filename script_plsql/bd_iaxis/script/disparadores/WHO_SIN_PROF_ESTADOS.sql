--------------------------------------------------------
--  DDL for Trigger WHO_SIN_PROF_ESTADOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_PROF_ESTADOS" 
   BEFORE INSERT
   ON sin_prof_estados
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
END;








/
ALTER TRIGGER "AXIS"."WHO_SIN_PROF_ESTADOS" ENABLE;
