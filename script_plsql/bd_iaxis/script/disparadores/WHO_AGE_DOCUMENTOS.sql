--------------------------------------------------------
--  DDL for Trigger WHO_AGE_DOCUMENTOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_AGE_DOCUMENTOS" 
   BEFORE INSERT OR UPDATE
   ON age_documentos
   FOR EACH ROW
BEGIN
   IF INSERTING THEN   -- (Es insert)
      :NEW.cusualt := NVL(:NEW.cusualt, f_user);
      :NEW.falta := NVL(:NEW.falta, f_sysdate);
      :NEW.cusuari := NVL(:NEW.cusuari, f_user);
      :NEW.fmovimi := NVL(:NEW.fmovimi, f_sysdate);
   ELSIF UPDATING THEN   -- (Es update
      :NEW.cusuari := f_user;
      :NEW.fmovimi := f_sysdate;
   END IF;
END who_per_documentos;







/
ALTER TRIGGER "AXIS"."WHO_AGE_DOCUMENTOS" ENABLE;
