--------------------------------------------------------
--  DDL for Trigger WHO_EMPLEADOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_EMPLEADOS" 
   BEFORE INSERT OR UPDATE
   ON empleados
   FOR EACH ROW
BEGIN
   :NEW.cusumod := f_user;
   :NEW.fmodifi := f_sysdate;
EXCEPTION
   WHEN OTHERS THEN
      RAISE;
END who_empleados;








/
ALTER TRIGGER "AXIS"."WHO_EMPLEADOS" ENABLE;
