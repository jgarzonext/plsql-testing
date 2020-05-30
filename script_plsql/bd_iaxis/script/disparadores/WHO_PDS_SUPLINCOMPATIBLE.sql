--------------------------------------------------------
--  DDL for Trigger WHO_PDS_SUPLINCOMPATIBLE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_PDS_SUPLINCOMPATIBLE" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON PDS_SUPLINCOMPATIBLE
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
      p_tab_error(f_sysdate, f_user, 'TRIGGER who_PDS_SUPLINCOMPATIBLE', 1, SQLCODE, SQLERRM);
END who_PDS_SUPLINCOMPATIBLE;





/
ALTER TRIGGER "AXIS"."WHO_PDS_SUPLINCOMPATIBLE" ENABLE;
