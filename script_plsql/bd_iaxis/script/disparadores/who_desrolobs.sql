--------------------------------------------------------
--  DDL for Trigger who_desrolobs
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."who_desrolobs" 
   BEFORE INSERT OR UPDATE
   ON agd_desrolobs
   FOR EACH ROW
BEGIN
   IF :OLD.crolobs IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END;









/
ALTER TRIGGER "AXIS"."who_desrolobs" ENABLE;
