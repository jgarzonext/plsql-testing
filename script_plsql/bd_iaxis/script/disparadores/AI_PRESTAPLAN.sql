--------------------------------------------------------
--  DDL for Trigger AI_PRESTAPLAN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."AI_PRESTAPLAN" 
BEFORE INSERT ON PRESTAPLAN FOR EACH ROW
DECLARE
BEGIN
   :NEW.CUSUALTA := F_USER;
END AI_PRESTAPLAN;









/
ALTER TRIGGER "AXIS"."AI_PRESTAPLAN" ENABLE;
