--------------------------------------------------------
--  DDL for Trigger TRG_AUT_DESSUBUSO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_AUT_DESSUBUSO" 
   BEFORE INSERT OR UPDATE
   ON aut_dessubuso
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
END trg_aut_dessubuso;









/
ALTER TRIGGER "AXIS"."TRG_AUT_DESSUBUSO" ENABLE;