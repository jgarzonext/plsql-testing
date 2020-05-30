--------------------------------------------------------
--  DDL for Trigger WHO_PRODHERENCIA_COLECT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_PRODHERENCIA_COLECT" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON PRODHERENCIA_COLECT
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
      p_tab_error(f_sysdate, f_user, 'TRIGGER who_PRODHERENCIA_COLECT', 1, SQLCODE, SQLERRM);
END who_PRODHERENCIA_COLECT;





/
ALTER TRIGGER "AXIS"."WHO_PRODHERENCIA_COLECT" ENABLE;
