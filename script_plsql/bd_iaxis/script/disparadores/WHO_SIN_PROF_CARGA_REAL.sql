--------------------------------------------------------
--  DDL for Trigger WHO_SIN_PROF_CARGA_REAL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_PROF_CARGA_REAL" 
   BEFORE INSERT
   ON sin_prof_carga_real
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
END;








/
ALTER TRIGGER "AXIS"."WHO_SIN_PROF_CARGA_REAL" ENABLE;
