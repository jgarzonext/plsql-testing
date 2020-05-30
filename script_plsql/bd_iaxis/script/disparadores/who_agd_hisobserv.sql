--------------------------------------------------------
--  DDL for Trigger who_agd_hisobserv
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."who_agd_hisobserv" 
   BEFORE INSERT OR UPDATE
   ON agd_hisobserv
   FOR EACH ROW
BEGIN
   :NEW.cusualt := f_user;
   :NEW.falta := f_sysdate;
END;









/
ALTER TRIGGER "AXIS"."who_agd_hisobserv" ENABLE;
