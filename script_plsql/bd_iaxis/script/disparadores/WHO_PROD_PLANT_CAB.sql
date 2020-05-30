--------------------------------------------------------
--  DDL for Trigger WHO_PROD_PLANT_CAB
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_PROD_PLANT_CAB" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON PROD_PLANT_CAB
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
      p_tab_error(f_sysdate, f_user, 'TRIGGER who_PROD_PLANT_CAB', 1, SQLCODE, SQLERRM);
END who_PROD_PLANT_CAB;





/
ALTER TRIGGER "AXIS"."WHO_PROD_PLANT_CAB" ENABLE;
