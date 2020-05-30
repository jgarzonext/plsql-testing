--------------------------------------------------------
--  DDL for Trigger WHO_SIN_PROF_DOC_REC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_PROF_DOC_REC" 
   BEFORE INSERT
   ON sin_prof_doc_rec
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
END;








/
ALTER TRIGGER "AXIS"."WHO_SIN_PROF_DOC_REC" ENABLE;
