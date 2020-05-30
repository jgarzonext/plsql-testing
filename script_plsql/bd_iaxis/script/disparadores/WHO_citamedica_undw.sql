--------------------------------------------------------
--  DDL for Trigger WHO_citamedica_undw
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_citamedica_undw" 
   BEFORE UPDATE
   ON citamedica_undw
   FOR EACH ROW
BEGIN
   :NEW.cusumod := f_user;
   :NEW.fmodifi := f_sysdate;
END who_citamedica_undw;



/
ALTER TRIGGER "AXIS"."WHO_citamedica_undw" ENABLE;
