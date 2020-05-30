--------------------------------------------------------
--  DDL for Trigger WHO_SIN_PROF_CONTACTOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_PROF_CONTACTOS" 
   BEFORE INSERT
   ON sin_prof_contactos
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
END;








/
ALTER TRIGGER "AXIS"."WHO_SIN_PROF_CONTACTOS" ENABLE;
