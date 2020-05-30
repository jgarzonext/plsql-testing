--------------------------------------------------------
--  DDL for Trigger WHO_GARANPRO_ULK
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_GARANPRO_ULK" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON GARANPRO_ULK
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
      p_tab_error(f_sysdate, f_user, 'TRIGGER who_GARANPRO_ULK', 1, SQLCODE, SQLERRM);
END who_GARANPRO_ULK;





/
ALTER TRIGGER "AXIS"."WHO_GARANPRO_ULK" ENABLE;
