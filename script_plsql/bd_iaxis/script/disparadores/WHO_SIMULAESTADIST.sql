--------------------------------------------------------
--  DDL for Trigger WHO_SIMULAESTADIST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIMULAESTADIST" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON SIMULAESTADIST
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
      p_tab_error(f_sysdate, f_user, 'TRIGGER who_SIMULAESTADIST', 1, SQLCODE, SQLERRM);
END who_SIMULAESTADIST;





/
ALTER TRIGGER "AXIS"."WHO_SIMULAESTADIST" ENABLE;
