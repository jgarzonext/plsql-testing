--------------------------------------------------------
--  DDL for Trigger WHO_COMISIONGAR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_COMISIONGAR" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON comisiongar
   FOR EACH ROW
BEGIN
   IF INSERTING THEN   -- (Es insert)
      :NEW.cusualta := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER who_COMISIONGAR', 1, SQLCODE, SQLERRM);
END who_comisiongar;





/
ALTER TRIGGER "AXIS"."WHO_COMISIONGAR" ENABLE;
