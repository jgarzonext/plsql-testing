--------------------------------------------------------
--  DDL for Trigger WHO_PRODMOTMOV
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_PRODMOTMOV" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON PRODMOTMOV
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
      p_tab_error(f_sysdate, f_user, 'TRIGGER who_PRODMOTMOV', 1, SQLCODE, SQLERRM);
END who_PRODMOTMOV;





/
ALTER TRIGGER "AXIS"."WHO_PRODMOTMOV" ENABLE;
