--------------------------------------------------------
--  DDL for Trigger WHO_PAGOSINITRAMI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_PAGOSINITRAMI" 
    BEFORE INSERT OR UPDATE ON PAGOSINITRAMI
    FOR EACH ROW
BEGIN
    IF :OLD.SIDEPAG IS NULL THEN  -- (Es insert)
      :NEW.CUSUALT := F_USER;
      :NEW.FALTA   := F_SYSDATE;
  ELSE  -- (Es update)
    :NEW.CUSUMOD := F_USER;
    :NEW.FMODIFI := F_SYSDATE;
  END IF;
END;









/
ALTER TRIGGER "AXIS"."WHO_PAGOSINITRAMI" ENABLE;
