--------------------------------------------------------
--  DDL for Trigger WHO_HIS_EXT_SEGUROS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_HIS_EXT_SEGUROS" 
   BEFORE INSERT OR UPDATE
   ON his_ext_seguros
   FOR EACH ROW
BEGIN
   :NEW.cusuhis := f_user;
   :NEW.fhisext := f_sysdate;
END who_his_ext_seguros;









/
ALTER TRIGGER "AXIS"."WHO_HIS_EXT_SEGUROS" ENABLE;
