--------------------------------------------------------
--  DDL for Trigger WHO_CTACARGOPRODUCTO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_CTACARGOPRODUCTO" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON CTACARGOPRODUCTO
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
      p_tab_error(f_sysdate, f_user, 'TRIGGER who_CTACARGOPRODUCTO', 1, SQLCODE, SQLERRM);
END who_CTACARGOPRODUCTO;





/
ALTER TRIGGER "AXIS"."WHO_CTACARGOPRODUCTO" ENABLE;
