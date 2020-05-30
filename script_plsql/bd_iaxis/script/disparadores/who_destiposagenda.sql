--------------------------------------------------------
--  DDL for Trigger who_destiposagenda
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."who_destiposagenda" 
   BEFORE INSERT OR UPDATE
   ON agd_destiposagenda
   FOR EACH ROW
BEGIN
   IF :OLD.ctipagd IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END;









/
ALTER TRIGGER "AXIS"."who_destiposagenda" ENABLE;
