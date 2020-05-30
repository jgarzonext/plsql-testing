--------------------------------------------------------
--  DDL for Trigger WHO_CFG_AVISOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_CFG_AVISOS" 
   BEFORE INSERT OR UPDATE
   ON cfg_avisos
   FOR EACH ROW
BEGIN
   IF :OLD.cidrel IS NULL THEN   -- (Es insert)
      :NEW.cusuari := NVL(:NEW.cusuari, f_user);
      :NEW.falta := NVL(:NEW.falta, f_sysdate);
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_cfg_avisos;









/
ALTER TRIGGER "AXIS"."WHO_CFG_AVISOS" ENABLE;
