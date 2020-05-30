--------------------------------------------------------
--  DDL for Trigger WHO_DANOSTRAMI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_DANOSTRAMI" 
  BEFORE INSERT ON DANOSTRAMI
  FOR EACH ROW
BEGIN
  :NEW.CUSUALT := F_USER;
  :NEW.FALTA   := F_SYSDATE;
END;









/
ALTER TRIGGER "AXIS"."WHO_DANOSTRAMI" ENABLE;
