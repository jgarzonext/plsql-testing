--------------------------------------------------------
--  DDL for Trigger WHO_INT_CARGA_CTRL_LINEA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_INT_CARGA_CTRL_LINEA" 
   BEFORE INSERT OR UPDATE
   ON int_carga_ctrl_linea
   FOR EACH ROW
BEGIN
   :NEW.cusuario := f_user;
   :NEW.fmovimi := f_sysdate;
END who_int_carga_ctrl_linea;









/
ALTER TRIGGER "AXIS"."WHO_INT_CARGA_CTRL_LINEA" ENABLE;
