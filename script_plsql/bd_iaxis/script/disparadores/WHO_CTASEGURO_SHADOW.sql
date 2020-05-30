--------------------------------------------------------
--  DDL for Trigger WHO_CTASEGURO_SHADOW
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_CTASEGURO_SHADOW" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON ctaseguro_shadow
   FOR EACH ROW
BEGIN
   IF INSERTING THEN
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER WHO_CTASEGURO_SHADOW', 1, SQLCODE, SQLERRM);
END who_ctaseguro;




/
ALTER TRIGGER "AXIS"."WHO_CTASEGURO_SHADOW" ENABLE;
