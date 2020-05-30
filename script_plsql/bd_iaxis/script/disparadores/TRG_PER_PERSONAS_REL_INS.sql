--------------------------------------------------------
--  DDL for Trigger TRG_PER_PERSONAS_REL_INS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PER_PERSONAS_REL_INS" 
   BEFORE INSERT
   ON per_personas_rel
   FOR EACH ROW
BEGIN
   :NEW.cusuari := f_user;
   :NEW.fmovimi := f_sysdate;
END trg_per_personas_ins;

/
ALTER TRIGGER "AXIS"."TRG_PER_PERSONAS_REL_INS" ENABLE;
