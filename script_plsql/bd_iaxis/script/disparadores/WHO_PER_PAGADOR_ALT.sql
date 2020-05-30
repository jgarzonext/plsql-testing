--------------------------------------------------------
--  DDL for Trigger WHO_PER_PAGADOR_ALT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_PER_PAGADOR_ALT" 
   BEFORE INSERT
   ON PER_PAGADOR_ALT
   FOR EACH ROW
BEGIN
   :NEW.CUSUALT := f_user;
   :NEW.FUSUALT := f_sysdate;
END who_PER_PAGADOR_ALT;

/
ALTER TRIGGER "AXIS"."WHO_PER_PAGADOR_ALT" ENABLE;
