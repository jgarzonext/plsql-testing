--------------------------------------------------------
--  DDL for Trigger WHO_ESTPER_NACIONAL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_ESTPER_NACIONAL" 
   BEFORE INSERT OR UPDATE
   ON estper_nacionalidades
   FOR EACH ROW
BEGIN
   IF INSERTING THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER WHO_ESTPER_NACIONAL', 1, SQLCODE, SQLERRM);
END who_estper_nacional;




/
ALTER TRIGGER "AXIS"."WHO_ESTPER_NACIONAL" ENABLE;
