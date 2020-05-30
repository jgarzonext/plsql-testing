--------------------------------------------------------
--  DDL for Trigger WHO_SIN_PROF_CCC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_PROF_CCC" 
   BEFORE INSERT
   ON sin_prof_ccc
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
END;








/
ALTER TRIGGER "AXIS"."WHO_SIN_PROF_CCC" ENABLE;
