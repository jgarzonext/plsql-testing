--------------------------------------------------------
--  DDL for Trigger WHO_PARMOTMOV
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_PARMOTMOV" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON PARMOTMOV
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
      p_tab_error(f_sysdate, f_user, 'TRIGGER who_PARMOTMOV', 1, SQLCODE, SQLERRM);
END who_PARMOTMOV;





/
ALTER TRIGGER "AXIS"."WHO_PARMOTMOV" ENABLE;
