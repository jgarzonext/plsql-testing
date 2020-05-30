--------------------------------------------------------
--  DDL for Trigger WHO_SIN_TRAMITA_DETDANO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_TRAMITA_DETDANO" 
   BEFORE INSERT
   ON sin_tramita_detdano
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
END who_sin_tramita_dano;









/
ALTER TRIGGER "AXIS"."WHO_SIN_TRAMITA_DETDANO" ENABLE;
