--------------------------------------------------------
--  DDL for Trigger WHO_PROD_ACTIVI_ACCESORIO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_PROD_ACTIVI_ACCESORIO" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON PROD_ACTIVI_ACCESORIO
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
      p_tab_error(f_sysdate, f_user, 'TRIGGER who_PROD_ACTIVI_ACCESORIO', 1, SQLCODE, SQLERRM);
END who_PROD_ACTIVI_ACCESORIO;





/
ALTER TRIGGER "AXIS"."WHO_PROD_ACTIVI_ACCESORIO" ENABLE;
