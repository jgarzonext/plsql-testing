--------------------------------------------------------
--  DDL for Trigger WHO_ESTAGENSEGU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_ESTAGENSEGU" 
 BEFORE INSERT OR UPDATE ON ESTAGENSEGU
 FOR EACH ROW
BEGIN
    IF :OLD.sseguro IS NULL THEN     -- (Es insert)
      :NEW.CUSUALT := F_USER;
    ELSE                -- (Es update)
      :NEW.CUSUMOD := F_USER;
      :NEW.FMODIFI := F_SYSDATE;
    END IF;
END WHO_ESTAGENSEGU;



/
ALTER TRIGGER "AXIS"."WHO_ESTAGENSEGU" ENABLE;
