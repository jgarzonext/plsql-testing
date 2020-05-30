--------------------------------------------------------
--  DDL for Trigger WHO_INT_CARGA_CTRL_LINEA_ERRS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_INT_CARGA_CTRL_LINEA_ERRS" 
   BEFORE INSERT OR UPDATE
   ON int_carga_ctrl_linea_errs
   FOR EACH ROW
BEGIN
   :NEW.cusuario := f_user;
   :NEW.fmovimi := f_sysdate;
END int_carga_ctrl_linea_errs;









/
ALTER TRIGGER "AXIS"."WHO_INT_CARGA_CTRL_LINEA_ERRS" ENABLE;
