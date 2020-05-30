--------------------------------------------------------
--  DDL for Trigger INS_REEMBFACT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."INS_REEMBFACT" 
before insert on Reembfact
for each row
begin
   :new.CUSUALTA := f_user;
   :new.FALTA    := f_sysdate;
end ins_Reembfact;









/
ALTER TRIGGER "AXIS"."INS_REEMBFACT" ENABLE;
