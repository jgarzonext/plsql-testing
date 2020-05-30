--------------------------------------------------------
--  DDL for Trigger WHO_TMP_DETPRIMAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_TMP_DETPRIMAS" 
   BEFORE INSERT OR UPDATE
   ON tmp_detprimas
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
ALTER TRIGGER "AXIS"."WHO_TMP_DETPRIMAS" ENABLE;
