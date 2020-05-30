--------------------------------------------------------
--  DDL for Trigger WHO_SIN_PROF_DESCARTADOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_PROF_DESCARTADOS" 
   BEFORE INSERT
   ON sin_prof_descartados
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
END;








/
ALTER TRIGGER "AXIS"."WHO_SIN_PROF_DESCARTADOS" ENABLE;
