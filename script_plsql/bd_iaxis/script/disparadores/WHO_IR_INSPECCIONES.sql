--------------------------------------------------------
--  DDL for Trigger WHO_IR_INSPECCIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_IR_INSPECCIONES" 
   BEFORE INSERT
   ON ir_inspecciones
   FOR EACH ROW
BEGIN
   IF INSERTING THEN   -- (Es insert)
      :NEW.cusualt := NVL(:NEW.cusualt, f_user);
      :NEW.falta := NVL(:NEW.falta, f_sysdate);
      :NEW.cusumod := NULL;
      :NEW.fmodifi := NULL;
   END IF;
END;







/
ALTER TRIGGER "AXIS"."WHO_IR_INSPECCIONES" ENABLE;
