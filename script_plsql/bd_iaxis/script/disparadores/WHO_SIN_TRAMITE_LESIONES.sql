--------------------------------------------------------
--  DDL for Trigger WHO_SIN_TRAMITE_LESIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_TRAMITE_LESIONES" 
   BEFORE INSERT OR UPDATE
   ON sin_tramite_lesiones
   FOR EACH ROW
BEGIN
   IF :OLD.nsinies IS NULL THEN   -- (Es insert)
      :NEW.cusualt := NVL(:NEW.cusualt, f_user);
      :NEW.falta := NVL(:NEW.falta, f_sysdate);
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fusumod := f_sysdate;
   END IF;
END who_cfg_avisos;









/
ALTER TRIGGER "AXIS"."WHO_SIN_TRAMITE_LESIONES" ENABLE;
