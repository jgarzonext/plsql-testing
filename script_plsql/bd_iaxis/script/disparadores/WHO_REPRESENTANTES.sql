--------------------------------------------------------
--  DDL for Trigger WHO_REPRESENTANTES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_REPRESENTANTES" 
   BEFORE INSERT OR UPDATE
   ON representantes
   FOR EACH ROW
BEGIN
   :NEW.cusumod := f_user;
   :NEW.fmodifi := f_sysdate;
EXCEPTION
   WHEN OTHERS THEN
      RAISE;
END who_representantes;








/
ALTER TRIGGER "AXIS"."WHO_REPRESENTANTES" ENABLE;
