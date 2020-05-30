--------------------------------------------------------
--  DDL for Trigger WHO_GARANPROTRAMIT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_GARANPROTRAMIT" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON garanprotramit
   FOR EACH ROW
BEGIN
   IF INSERTING THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodif := f_sysdate;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER who_GARANPROTRAMIT', 1, SQLCODE, SQLERRM);
END who_garanprotramit;





/
ALTER TRIGGER "AXIS"."WHO_GARANPROTRAMIT" ENABLE;
