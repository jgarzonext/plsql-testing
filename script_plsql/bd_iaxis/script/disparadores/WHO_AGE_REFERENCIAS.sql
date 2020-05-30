--------------------------------------------------------
--  DDL for Trigger WHO_AGE_REFERENCIAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_AGE_REFERENCIAS" 
   BEFORE INSERT OR UPDATE
   ON age_referencias
   FOR EACH ROW
BEGIN
   -- en el INSERT solo informar el usuario y la fecha en que se crea el registro
   IF INSERTING THEN
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   END IF;

   -- en el UPDATE solo informar el usuario y la fecha en que se modifica el registro
   IF UPDATING THEN
      :NEW.cusuari := f_user;
      :NEW.fmovimi := f_sysdate;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      NULL;
END who_age_referencias;







/
ALTER TRIGGER "AXIS"."WHO_AGE_REFERENCIAS" ENABLE;
