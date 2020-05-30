--------------------------------------------------------
--  DDL for Trigger WHO_COMISIONPROD_NIVEL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_COMISIONPROD_NIVEL" 
   BEFORE INSERT OR UPDATE
   ON comisionprod_nivel
   FOR EACH ROW
BEGIN
   IF :OLD.ccomisi IS NULL THEN   -- (Es insert)
      :NEW.cusualta := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END;








/
ALTER TRIGGER "AXIS"."WHO_COMISIONPROD_NIVEL" ENABLE;
