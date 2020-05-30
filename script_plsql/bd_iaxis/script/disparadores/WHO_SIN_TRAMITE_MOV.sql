--------------------------------------------------------
--  DDL for Trigger WHO_SIN_TRAMITE_MOV
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SIN_TRAMITE_MOV" 
   BEFORE INSERT
   ON sin_tramite_mov
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
END;







/
ALTER TRIGGER "AXIS"."WHO_SIN_TRAMITE_MOV" ENABLE;
