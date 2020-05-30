--------------------------------------------------------
--  DDL for Trigger WHO_PRODUCTOS_EMPLEADOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_PRODUCTOS_EMPLEADOS" 
   BEFORE INSERT OR UPDATE
   ON productos_empleados
   FOR EACH ROW
BEGIN
   :NEW.cusumod := f_user;
   :NEW.fmodifi := f_sysdate;
EXCEPTION
   WHEN OTHERS THEN
      RAISE;
END who_productos_empleados;








/
ALTER TRIGGER "AXIS"."WHO_PRODUCTOS_EMPLEADOS" ENABLE;
