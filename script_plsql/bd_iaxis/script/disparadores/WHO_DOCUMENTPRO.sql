--------------------------------------------------------
--  DDL for Trigger WHO_DOCUMENTPRO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_DOCUMENTPRO" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON documentpro
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
      p_tab_error(f_sysdate, f_user, 'TRIGGER who_DOCUMENTPRO', 1, SQLCODE, SQLERRM);
END who_documentpro;





/
ALTER TRIGGER "AXIS"."WHO_DOCUMENTPRO" ENABLE;
