--------------------------------------------------------
--  DDL for Trigger INS_REEMBOLSOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."INS_REEMBOLSOS" 
before insert on reembolsos
for each row
begin
   :new.CUSUALTA := f_user;
   :new.FALTA    := f_sysdate;
end ins_reembolsos;









/
ALTER TRIGGER "AXIS"."INS_REEMBOLSOS" ENABLE;
