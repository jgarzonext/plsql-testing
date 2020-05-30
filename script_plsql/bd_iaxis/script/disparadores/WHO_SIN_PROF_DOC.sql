--------------------------------------------------------
--  DDL for Trigger WHO_SIN_PROF_DOC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_PROF_DOC" 
   BEFORE INSERT
   ON sin_prof_doc
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
END;








/
ALTER TRIGGER "AXIS"."WHO_SIN_PROF_DOC" ENABLE;
