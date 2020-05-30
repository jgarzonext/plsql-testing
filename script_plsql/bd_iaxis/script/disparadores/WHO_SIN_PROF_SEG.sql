--------------------------------------------------------
--  DDL for Trigger WHO_SIN_PROF_SEG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_PROF_SEG" 
   BEFORE INSERT
   ON sin_prof_seg
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
END;








/
ALTER TRIGGER "AXIS"."WHO_SIN_PROF_SEG" ENABLE;
