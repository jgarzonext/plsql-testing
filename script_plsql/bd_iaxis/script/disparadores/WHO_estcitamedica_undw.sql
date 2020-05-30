--------------------------------------------------------
--  DDL for Trigger WHO_estcitamedica_undw
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_estcitamedica_undw" 
   BEFORE UPDATE
   ON estcitamedica_undw
   FOR EACH ROW
BEGIN
   :NEW.cusumod := f_user;
   :NEW.fmodifi := f_sysdate;
END who_estcitamedica_undw;



/
ALTER TRIGGER "AXIS"."WHO_estcitamedica_undw" ENABLE;
