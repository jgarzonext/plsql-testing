--------------------------------------------------------
--  DDL for Trigger WHO_CASOS_BPMSEG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_CASOS_BPMSEG" 
   BEFORE INSERT OR UPDATE
   ON casos_bpmseg
   FOR EACH ROW
BEGIN
   IF INSERTING THEN   -- (Es insert)
      :NEW.cusualt := NVL(:NEW.cusualt, f_user);
      :NEW.falta := NVL(:NEW.falta, f_sysdate);
      :NEW.cusumod := NULL;
      :NEW.fmodifi := NULL;
   ELSE
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END;






/
ALTER TRIGGER "AXIS"."WHO_CASOS_BPMSEG" ENABLE;
