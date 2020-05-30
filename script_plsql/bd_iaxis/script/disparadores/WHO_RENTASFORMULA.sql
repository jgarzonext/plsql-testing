--------------------------------------------------------
--  DDL for Trigger WHO_RENTASFORMULA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_RENTASFORMULA" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON RENTASFORMULA
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
      p_tab_error(f_sysdate, f_user, 'TRIGGER who_RENTASFORMULA', 1, SQLCODE, SQLERRM);
END who_RENTASFORMULA;





/
ALTER TRIGGER "AXIS"."WHO_RENTASFORMULA" ENABLE;
