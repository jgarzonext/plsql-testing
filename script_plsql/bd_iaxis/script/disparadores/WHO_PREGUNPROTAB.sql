--------------------------------------------------------
--  DDL for Trigger WHO_PREGUNPROTAB
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_PREGUNPROTAB" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON PREGUNPROTAB
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
      p_tab_error(f_sysdate, f_user, 'TRIGGER who_PREGUNPROTAB', 1, SQLCODE, SQLERRM);
END who_PREGUNPROTAB;





/
ALTER TRIGGER "AXIS"."WHO_PREGUNPROTAB" ENABLE;
