--------------------------------------------------------
--  DDL for Trigger WHO_SIN_PROF
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_PROF" 
   BEFORE INSERT
   ON sin_prof_profesionales
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
END;








/
ALTER TRIGGER "AXIS"."WHO_SIN_PROF" ENABLE;
