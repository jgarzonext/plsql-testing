--------------------------------------------------------
--  DDL for Trigger AI_PER_CCC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."AI_PER_CCC" 
   BEFORE INSERT
   ON per_ccc
   FOR EACH ROW
BEGIN
   :NEW.cusualta := f_user;
   :NEW.falta := f_sysdate;
END ai_per_ccc;








/
ALTER TRIGGER "AXIS"."AI_PER_CCC" ENABLE;
