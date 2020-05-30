--------------------------------------------------------
--  DDL for Trigger WHO_DETGARANFORMULA_PAC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_DETGARANFORMULA_PAC" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON DETGARANFORMULA_PAC
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
      p_tab_error(f_sysdate, f_user, 'TRIGGER who_DETGARANFORMULA_PAC', 1, SQLCODE, SQLERRM);
END who_DETGARANFORMULA_PAC;





/
ALTER TRIGGER "AXIS"."WHO_DETGARANFORMULA_PAC" ENABLE;
