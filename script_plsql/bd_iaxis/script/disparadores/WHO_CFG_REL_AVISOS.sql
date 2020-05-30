--------------------------------------------------------
--  DDL for Trigger WHO_CFG_REL_AVISOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_CFG_REL_AVISOS" 
   BEFORE INSERT OR UPDATE
   ON cfg_rel_avisos
   FOR EACH ROW
BEGIN
   IF :OLD.caviso IS NULL THEN   -- (Es insert)
      :NEW.cusuari := NVL(:NEW.cusuari, f_user);
      :NEW.falta := NVL(:NEW.falta, f_sysdate);
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
END who_cfg_rel_avisos;









/
ALTER TRIGGER "AXIS"."WHO_CFG_REL_AVISOS" ENABLE;