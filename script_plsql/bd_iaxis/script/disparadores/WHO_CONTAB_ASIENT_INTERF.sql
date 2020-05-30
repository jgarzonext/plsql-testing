--------------------------------------------------------
--  DDL for Trigger WHO_CONTAB_ASIENT_INTERF
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_CONTAB_ASIENT_INTERF" 
   BEFORE INSERT
   ON contab_asient_interf
   FOR EACH ROW
BEGIN
   :NEW.cusuari := f_user;
   :NEW.falta := f_sysdate;
EXCEPTION
   WHEN OTHERS THEN
      RAISE;
END who_contab_asient_interf;







/
ALTER TRIGGER "AXIS"."WHO_CONTAB_ASIENT_INTERF" ENABLE;
