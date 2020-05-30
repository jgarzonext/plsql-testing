--------------------------------------------------------
--  DDL for Trigger AI_ESTMANDATOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."AI_ESTMANDATOS" 
   BEFORE INSERT
   ON estmandatos
   FOR EACH ROW
BEGIN
   :NEW.cusualta := f_user;
   :NEW.fusualta := f_sysdate;
END ai_estmandatos;





/
ALTER TRIGGER "AXIS"."AI_ESTMANDATOS" ENABLE;
