--------------------------------------------------------
--  DDL for Trigger WHO_GARANPRO_VALIDACION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_GARANPRO_VALIDACION" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON GARANPRO_VALIDACION
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
      p_tab_error(f_sysdate, f_user, 'TRIGGER who_GARANPRO_VALIDACION', 1, SQLCODE, SQLERRM);
END who_GARANPRO_VALIDACION;





/
ALTER TRIGGER "AXIS"."WHO_GARANPRO_VALIDACION" ENABLE;
