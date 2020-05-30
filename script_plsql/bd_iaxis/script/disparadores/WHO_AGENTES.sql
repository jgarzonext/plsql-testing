--------------------------------------------------------
--  DDL for Trigger WHO_AGENTES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_AGENTES" 
   BEFORE INSERT OR UPDATE
   ON agentes
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
      :NEW.fusumod := f_sysdate;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      NULL;
END who_agentes;







/
ALTER TRIGGER "AXIS"."WHO_AGENTES" ENABLE;
