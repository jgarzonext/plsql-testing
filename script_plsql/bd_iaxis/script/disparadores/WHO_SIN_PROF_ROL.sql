--------------------------------------------------------
--  DDL for Trigger WHO_SIN_PROF_ROL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_PROF_ROL" 
   BEFORE INSERT
   ON sin_prof_rol
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
END;








/
ALTER TRIGGER "AXIS"."WHO_SIN_PROF_ROL" ENABLE;
