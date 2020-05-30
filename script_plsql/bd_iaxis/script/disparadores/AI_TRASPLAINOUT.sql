--------------------------------------------------------
--  DDL for Trigger AI_TRASPLAINOUT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."AI_TRASPLAINOUT" 
BEFORE INSERT ON TRASPLAINOUT FOR EACH ROW
DECLARE
BEGIN
   :NEW.CUSUALTA := F_USER;
END AI_TRASPLAINOUT;









/
ALTER TRIGGER "AXIS"."AI_TRASPLAINOUT" ENABLE;
