--------------------------------------------------------
--  DDL for Trigger WHO_INT_CARGA_CTRL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_INT_CARGA_CTRL" 
   BEFORE INSERT OR UPDATE
   ON int_carga_ctrl
   FOR EACH ROW
BEGIN
   :NEW.cusuario := f_user;
   :NEW.fmovimi := f_sysdate;
END who_int_carga_ctrl;









/
ALTER TRIGGER "AXIS"."WHO_INT_CARGA_CTRL" ENABLE;
