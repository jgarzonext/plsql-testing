--------------------------------------------------------
--  DDL for Trigger WHO_CUM_CUMGARAN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_CUM_CUMGARAN" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON CUM_CUMGARAN
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
      p_tab_error(f_sysdate, f_user, 'TRIGGER who_CUM_CUMGARAN', 1, SQLCODE, SQLERRM);
END who_CUM_CUMGARAN;





/
ALTER TRIGGER "AXIS"."WHO_CUM_CUMGARAN" ENABLE;
