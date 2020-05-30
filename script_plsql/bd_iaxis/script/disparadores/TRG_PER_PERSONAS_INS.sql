--------------------------------------------------------
--  DDL for Trigger TRG_PER_PERSONAS_INS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PER_PERSONAS_INS" 
   BEFORE INSERT
   ON per_personas
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
END trg_per_personas_ins;





/
ALTER TRIGGER "AXIS"."TRG_PER_PERSONAS_INS" ENABLE;
