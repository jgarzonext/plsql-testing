--------------------------------------------------------
--  DDL for Trigger TRG_AUT_DESAGRCLASE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_AUT_DESAGRCLASE" 
   BEFORE INSERT OR UPDATE
   ON aut_desagrclase
   REFERENCING NEW AS NEW
   FOR EACH ROW
DECLARE
BEGIN
   IF INSERTING THEN
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate();
   END IF;

   IF UPDATING THEN
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate();
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      -- Consider logging the error and then re-raise
      RAISE;
END trg_aut_desagrclase;







/
ALTER TRIGGER "AXIS"."TRG_AUT_DESAGRCLASE" ENABLE;
