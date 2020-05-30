--------------------------------------------------------
--  DDL for Trigger WHO_CONTAB_ASIENT_DIA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_CONTAB_ASIENT_DIA" 
   BEFORE INSERT
   ON contab_asient_dia
   FOR EACH ROW
BEGIN
   :NEW.cusuari := f_user;
   :NEW.falta := f_sysdate;
EXCEPTION
   WHEN OTHERS THEN
      RAISE;
END who_contab_asient_dia;







/
ALTER TRIGGER "AXIS"."WHO_CONTAB_ASIENT_DIA" ENABLE;
