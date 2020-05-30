--------------------------------------------------------
--  DDL for Trigger BU_ACTIVIPROD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BU_ACTIVIPROD" 
   BEFORE UPDATE   --INSERT OR UPDATE
   ON activiprod
   FOR EACH ROW
BEGIN
   IF :OLD.cactivo <> :NEW.cactivo THEN
      :NEW.festado := f_sysdate;
   END IF;
END;







/
ALTER TRIGGER "AXIS"."BU_ACTIVIPROD" ENABLE;
