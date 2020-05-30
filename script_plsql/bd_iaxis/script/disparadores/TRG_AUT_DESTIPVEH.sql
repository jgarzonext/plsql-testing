--------------------------------------------------------
--  DDL for Trigger TRG_AUT_DESTIPVEH
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_AUT_DESTIPVEH" 
   BEFORE INSERT OR UPDATE
   ON aut_destipveh
   REFERENCING NEW AS NEW
   FOR EACH ROW
DECLARE
BEGIN
   IF INSERTING THEN
      :NEW.cusualt := NVL(f_user, USER);
      :NEW.falta := f_sysdate();
   END IF;

   IF UPDATING THEN
      :NEW.cusumod := NVL(f_user, USER);
      :NEW.fmodifi := f_sysdate();
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      -- Consider logging the error and then re-raise
      RAISE;
END trg_aut_destipveh;









/
ALTER TRIGGER "AXIS"."TRG_AUT_DESTIPVEH" ENABLE;
