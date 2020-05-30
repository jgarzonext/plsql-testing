--------------------------------------------------------
--  DDL for Trigger WHO_ESTBENESPSEG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_ESTBENESPSEG" 
   BEFORE INSERT
   ON estbenespseg
   FOR EACH ROW
BEGIN
   :NEW.cusuari := f_user;
   :NEW.fmovimi := f_sysdate;
END who_estbenespseg;








/
ALTER TRIGGER "AXIS"."WHO_ESTBENESPSEG" ENABLE;
