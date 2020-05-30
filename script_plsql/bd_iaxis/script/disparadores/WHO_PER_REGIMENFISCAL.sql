--------------------------------------------------------
--  DDL for Trigger WHO_PER_REGIMENFISCAL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_PER_REGIMENFISCAL" 
   BEFORE INSERT
   ON per_regimenfiscal
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
END who_per_regimenfiscal;








/
ALTER TRIGGER "AXIS"."WHO_PER_REGIMENFISCAL" ENABLE;
