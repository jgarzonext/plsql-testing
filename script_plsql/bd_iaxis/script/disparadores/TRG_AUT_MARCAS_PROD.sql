--------------------------------------------------------
--  DDL for Trigger TRG_AUT_MARCAS_PROD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_AUT_MARCAS_PROD" 
   BEFORE INSERT OR UPDATE
   ON AUT_MARCAS_PROD
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
END TRG_AUT_MARCAS_PROD;







/
ALTER TRIGGER "AXIS"."TRG_AUT_MARCAS_PROD" ENABLE;
