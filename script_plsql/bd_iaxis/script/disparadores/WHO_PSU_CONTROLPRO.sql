--------------------------------------------------------
--  DDL for Trigger WHO_PSU_CONTROLPRO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_PSU_CONTROLPRO" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON PSU_CONTROLPRO
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
      p_tab_error(f_sysdate, f_user, 'TRIGGER who_PSU_CONTROLPRO', 1, SQLCODE, SQLERRM);
END who_PSU_CONTROLPRO;





/
ALTER TRIGGER "AXIS"."WHO_PSU_CONTROLPRO" ENABLE;
