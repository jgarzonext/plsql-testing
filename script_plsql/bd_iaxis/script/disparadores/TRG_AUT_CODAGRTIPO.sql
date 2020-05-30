--------------------------------------------------------
--  DDL for Trigger TRG_AUT_CODAGRTIPO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_AUT_CODAGRTIPO" 
   BEFORE INSERT OR UPDATE
   ON aut_codagrtipo
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
END trg_aut_codagrtipo;







/
ALTER TRIGGER "AXIS"."TRG_AUT_CODAGRTIPO" ENABLE;
