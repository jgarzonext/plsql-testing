--------------------------------------------------------
--  DDL for Trigger WHO_AUT_PROD_PESOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_AUT_PROD_PESOS" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON AUT_PROD_PESOS
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
      p_tab_error(f_sysdate, f_user, 'TRIGGER who_AUT_PROD_PESOS', 1, SQLCODE, SQLERRM);
END who_AUT_PROD_PESOS;





/
ALTER TRIGGER "AXIS"."WHO_AUT_PROD_PESOS" ENABLE;
