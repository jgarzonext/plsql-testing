--------------------------------------------------------
--  DDL for Trigger WHO_DOC_DOCUREQUERIDA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_DOC_DOCUREQUERIDA" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON DOC_DOCUREQUERIDA
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
      p_tab_error(f_sysdate, f_user, 'TRIGGER who_DOC_DOCUREQUERIDA', 1, SQLCODE, SQLERRM);
END who_DOC_DOCUREQUERIDA;





/
ALTER TRIGGER "AXIS"."WHO_DOC_DOCUREQUERIDA" ENABLE;
