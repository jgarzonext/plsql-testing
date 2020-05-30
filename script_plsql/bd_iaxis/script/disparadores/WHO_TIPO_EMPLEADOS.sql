--------------------------------------------------------
--  DDL for Trigger WHO_TIPO_EMPLEADOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_TIPO_EMPLEADOS" 
   BEFORE INSERT OR UPDATE
   ON tipo_empleados
   FOR EACH ROW
BEGIN
   :NEW.cusumod := f_user;
   :NEW.fmodifi := f_sysdate;
EXCEPTION
   WHEN OTHERS THEN
      RAISE;
END who_tipo_empleados;








/
ALTER TRIGGER "AXIS"."WHO_TIPO_EMPLEADOS" ENABLE;
