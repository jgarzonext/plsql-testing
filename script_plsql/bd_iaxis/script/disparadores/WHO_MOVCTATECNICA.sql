--------------------------------------------------------
--  DDL for Trigger WHO_MOVCTATECNICA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_MOVCTATECNICA" 
   BEFORE INSERT OR UPDATE
   ON movctatecnica
   FOR EACH ROW
BEGIN
   -- en el INSERT solo informar el usuario y la fecha en que se crea el registro
   IF INSERTING THEN
      :NEW.cusucre := f_user;
      :NEW.fcreac := f_sysdate;
   END IF;

   -- en el UPDATE solo informar el usuario y la fecha en que se modifica el registro
   IF UPDATING THEN
      :NEW.cusumod := f_user;
      :NEW.fmodif := f_sysdate;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      NULL;
END who_movctatecnica;





/
ALTER TRIGGER "AXIS"."WHO_MOVCTATECNICA" ENABLE;
