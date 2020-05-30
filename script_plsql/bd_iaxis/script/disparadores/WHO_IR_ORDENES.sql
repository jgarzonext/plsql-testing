--------------------------------------------------------
--  DDL for Trigger WHO_IR_ORDENES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_IR_ORDENES" 
   BEFORE INSERT
   ON ir_ordenes
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
ALTER TRIGGER "AXIS"."WHO_IR_ORDENES" ENABLE;
