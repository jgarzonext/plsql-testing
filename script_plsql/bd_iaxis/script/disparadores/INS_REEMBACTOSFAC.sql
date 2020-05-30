--------------------------------------------------------
--  DDL for Trigger INS_REEMBACTOSFAC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."INS_REEMBACTOSFAC" 
before insert on reembactosfac
for each row
begin
   :new.CUSUALTA := f_user;
   :new.FALTA    := f_sysdate;
end ins_reembactosfac;









/
ALTER TRIGGER "AXIS"."INS_REEMBACTOSFAC" ENABLE;
