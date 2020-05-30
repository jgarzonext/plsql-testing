--------------------------------------------------------
--  DDL for Trigger WHO_LOCALIZATRAMI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_LOCALIZATRAMI" 
  BEFORE INSERT ON LOCALIZATRAMI
  FOR EACH ROW
BEGIN
  :NEW.CUSUALT := F_USER;
  :NEW.FALTA   := F_SYSDATE;
END;









/
ALTER TRIGGER "AXIS"."WHO_LOCALIZATRAMI" ENABLE;
