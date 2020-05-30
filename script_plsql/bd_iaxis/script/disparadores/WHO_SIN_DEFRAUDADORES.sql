--------------------------------------------------------
--  DDL for Trigger WHO_SIN_DEFRAUDADORES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_DEFRAUDADORES" 
   BEFORE INSERT OR UPDATE
   ON sin_defraudadores
   FOR EACH ROW
BEGIN
   -- en el INSERT solo informar el usuario y la fecha en que se crea el registro
   IF INSERTING THEN
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   END IF;
END who_sin_defraudadores;







/
ALTER TRIGGER "AXIS"."WHO_SIN_DEFRAUDADORES" ENABLE;
