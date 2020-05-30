--------------------------------------------------------
--  DDL for Trigger RELACIONES_CAB_WHO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."RELACIONES_CAB_WHO" 
   BEFORE INSERT OR UPDATE
   ON RELACIONES_CAB    FOR EACH ROW
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
ALTER TRIGGER "AXIS"."RELACIONES_CAB_WHO" ENABLE;
