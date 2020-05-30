--------------------------------------------------------
--  DDL for Trigger AI_ESTPER_CCC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."AI_ESTPER_CCC" 
   BEFORE INSERT
   ON estper_ccc
   FOR EACH ROW
BEGIN
   :NEW.cusualta := f_user;
   :NEW.falta := f_sysdate;
END ai_estper_ccc;








/
ALTER TRIGGER "AXIS"."AI_ESTPER_CCC" ENABLE;
