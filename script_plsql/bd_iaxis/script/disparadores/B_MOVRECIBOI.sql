--------------------------------------------------------
--  DDL for Trigger B_MOVRECIBOI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."B_MOVRECIBOI" 
BEFORE INSERT OR UPDATE ON MOVRECIBOI
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CUSUINI := F_USER;
    :NEW.FMOVINI := F_SYSDATE;
  ELSIF UPDATING THEN
    :NEW.CUSUFIN := F_USER;
    :NEW.FMOVFIN := F_SYSDATE;
  END IF;
END;









/
ALTER TRIGGER "AXIS"."B_MOVRECIBOI" ENABLE;
