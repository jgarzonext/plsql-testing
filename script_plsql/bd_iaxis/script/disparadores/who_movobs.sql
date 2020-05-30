--------------------------------------------------------
--  DDL for Trigger who_movobs
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."who_movobs" 
   BEFORE INSERT OR UPDATE
   ON agd_movobs
   FOR EACH ROW
BEGIN
   IF :OLD.idobs IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   END IF;
END;









/
ALTER TRIGGER "AXIS"."who_movobs" ENABLE;
