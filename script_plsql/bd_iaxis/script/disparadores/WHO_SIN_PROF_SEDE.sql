--------------------------------------------------------
--  DDL for Trigger WHO_SIN_PROF_SEDE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_PROF_SEDE" 
   BEFORE INSERT
   ON sin_prof_sede
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
END;








/
ALTER TRIGGER "AXIS"."WHO_SIN_PROF_SEDE" ENABLE;
