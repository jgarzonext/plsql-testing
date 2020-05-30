--------------------------------------------------------
--  DDL for Trigger WHO_ESTPER_REGIMENFISCAL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_ESTPER_REGIMENFISCAL" 
   BEFORE INSERT
   ON estper_regimenfiscal
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
END who_estper_regimenfiscal;







/
ALTER TRIGGER "AXIS"."WHO_ESTPER_REGIMENFISCAL" ENABLE;
