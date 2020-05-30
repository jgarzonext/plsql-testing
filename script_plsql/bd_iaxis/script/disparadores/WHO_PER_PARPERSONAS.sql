--------------------------------------------------------
--  DDL for Trigger WHO_PER_PARPERSONAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_PER_PARPERSONAS" 
   BEFORE INSERT
   ON per_parpersonas
   FOR EACH ROW
BEGIN
   :NEW.cusuari := f_user;
   :NEW.fmovimi := f_sysdate;
END;






/
ALTER TRIGGER "AXIS"."WHO_PER_PARPERSONAS" ENABLE;
