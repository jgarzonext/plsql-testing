--------------------------------------------------------
--  DDL for Trigger WHO_SIN_PROF_OBSERVACIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_PROF_OBSERVACIONES" 
   BEFORE INSERT
   ON sin_prof_observaciones
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
END;








/
ALTER TRIGGER "AXIS"."WHO_SIN_PROF_OBSERVACIONES" ENABLE;
