--------------------------------------------------------
--  DDL for Trigger WHO_PRODCTACARGO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_PRODCTACARGO" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON PRODCTACARGO
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
      p_tab_error(f_sysdate, f_user, 'TRIGGER who_PRODCTACARGO', 1, SQLCODE, SQLERRM);
END who_PRODCTACARGO;





/
ALTER TRIGGER "AXIS"."WHO_PRODCTACARGO" ENABLE;
