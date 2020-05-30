--------------------------------------------------------
--  DDL for Trigger WHO_ANUBENESPSEG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_ANUBENESPSEG" 
   BEFORE INSERT
   ON anubenespseg
   FOR EACH ROW
BEGIN
   :NEW.cusuari := f_user;
   :NEW.fmovimi := f_sysdate;
END who_anubenespseg;







/
ALTER TRIGGER "AXIS"."WHO_ANUBENESPSEG" ENABLE;
