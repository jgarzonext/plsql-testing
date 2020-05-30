--------------------------------------------------------
--  DDL for Trigger WHO_PER_NACIONAL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_PER_NACIONAL" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON per_nacionalidades
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
      p_tab_error(f_sysdate, f_user, 'TRIGGER WHO_PER_NACIONAL', 1, SQLCODE, SQLERRM);
END who_per_nacional;




/
ALTER TRIGGER "AXIS"."WHO_PER_NACIONAL" ENABLE;
