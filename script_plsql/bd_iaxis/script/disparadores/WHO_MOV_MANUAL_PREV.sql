--------------------------------------------------------
--  DDL for Trigger WHO_MOV_MANUAL_PREV
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_MOV_MANUAL_PREV" 
   BEFORE INSERT OR UPDATE
   ON mov_manual_prev
   FOR EACH ROW
BEGIN
   IF :OLD.cusualt IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END;







/
ALTER TRIGGER "AXIS"."WHO_MOV_MANUAL_PREV" ENABLE;
