--------------------------------------------------------
--  DDL for Trigger WHO_SIN_CONPAG_PROD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_CONPAG_PROD" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON SIN_CONPAG_PROD
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
      p_tab_error(f_sysdate, f_user, 'TRIGGER who_SIN_CONPAG_PROD', 1, SQLCODE, SQLERRM);
END who_SIN_CONPAG_PROD;





/
ALTER TRIGGER "AXIS"."WHO_SIN_CONPAG_PROD" ENABLE;
