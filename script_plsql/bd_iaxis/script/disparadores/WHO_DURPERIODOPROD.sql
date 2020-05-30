--------------------------------------------------------
--  DDL for Trigger WHO_DURPERIODOPROD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_DURPERIODOPROD" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON DURPERIODOPROD
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
      p_tab_error(f_sysdate, f_user, 'TRIGGER who_DURPERIODOPROD', 1, SQLCODE, SQLERRM);
END who_DURPERIODOPROD;





/
ALTER TRIGGER "AXIS"."WHO_DURPERIODOPROD" ENABLE;
