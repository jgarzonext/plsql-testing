--------------------------------------------------------
--  DDL for Trigger WHO_BENESPSEG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_BENESPSEG" 
   BEFORE INSERT
   ON benespseg
   FOR EACH ROW
BEGIN
   :NEW.cusuari := f_user;
   :NEW.fmovimi := f_sysdate;
END who_benespseg;








/
ALTER TRIGGER "AXIS"."WHO_BENESPSEG" ENABLE;
