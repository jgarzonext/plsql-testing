--------------------------------------------------------
--  DDL for Trigger WHO_AGD_CHAT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_AGD_CHAT" 
   BEFORE INSERT OR UPDATE
   ON agd_chat
   FOR EACH ROW
BEGIN
   IF :OLD.nmovchat IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END;









/
ALTER TRIGGER "AXIS"."WHO_AGD_CHAT" ENABLE;
