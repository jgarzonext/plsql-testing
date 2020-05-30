--------------------------------------------------------
--  DDL for Trigger WHO_PER_SARLAFT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_PER_SARLAFT" 
   BEFORE INSERT
   ON per_sarlaft
   FOR EACH ROW
BEGIN
   -- en el INSERT solo informar el usuario y la fecha en que se crea el registro
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
EXCEPTION
   WHEN OTHERS THEN
      NULL;
END who_per_sarlaft;








/
ALTER TRIGGER "AXIS"."WHO_PER_SARLAFT" ENABLE;
