--------------------------------------------------------
--  DDL for Trigger who_codirolobs
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."who_codirolobs" 
   BEFORE INSERT OR UPDATE
   ON agd_codirolobs
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
ALTER TRIGGER "AXIS"."who_codirolobs" ENABLE;
