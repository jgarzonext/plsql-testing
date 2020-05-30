--------------------------------------------------------
--  DDL for Trigger PRBA_ESTGARANSEG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."PRBA_ESTGARANSEG" 
  before insert or update or delete
  on ESTGARANSEG 
  for each row
declare
begin
IF INSERTING THEN
  p_control_error('PRBA','ESTGARANSEG','INSERTING -'||DBMS_UTILITY.FORMAT_CALL_STACK);
ELSIF UPDATING THEN
  p_control_error('PRBA','ESTGARANSEG','UPDATING  -'||DBMS_UTILITY.FORMAT_CALL_STACK);
ELSE
  p_control_error('PRBA','ESTGARANSEG','DELETING  -'||DBMS_UTILITY.FORMAT_CALL_STACK);
END IF;
end PRBA_ESTGARANSEG;


/
ALTER TRIGGER "AXIS"."PRBA_ESTGARANSEG" ENABLE;
