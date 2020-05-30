--------------------------------------------------------
--  DDL for Trigger WHO_AGE_TRANSICIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_AGE_TRANSICIONES" 
   BEFORE INSERT OR UPDATE
   ON age_transiciones
   FOR EACH ROW
BEGIN
   -- en el INSERT solo informar el usuario y la fecha en que se crea el registro
   IF INSERTING THEN
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   END IF;

   -- en el UPDATE solo informar el usuario y la fecha en que se modifica el registro
   IF UPDATING THEN
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      NULL;
END who_age_transiciones;







/
ALTER TRIGGER "AXIS"."WHO_AGE_TRANSICIONES" ENABLE;
