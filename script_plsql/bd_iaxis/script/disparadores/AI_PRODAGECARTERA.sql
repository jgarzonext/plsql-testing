--------------------------------------------------------
--  DDL for Trigger AI_PRODAGECARTERA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."AI_PRODAGECARTERA" 
   BEFORE INSERT
   ON prodagecartera
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
END ai_prodagecartera;





/
ALTER TRIGGER "AXIS"."AI_PRODAGECARTERA" ENABLE;
