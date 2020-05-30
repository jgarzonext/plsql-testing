--------------------------------------------------------
--  DDL for Trigger ACTUALIZA_GARANPRO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."ACTUALIZA_GARANPRO" 
BEFORE INSERT ON GARANPRO
FOR EACH ROW
DECLARE
   nproduc NUMBER;
BEGIN
   select sproduc into nproduc
   from   productos
   where  cramo = :new.cramo
     and  cmodali = :new.cmodali
     and  ctipseg = :new.ctipseg
     and  ccolect = :new.ccolect;
   :NEW.sproduc := nproduc;
EXCEPTION
   WHEN VALUE_ERROR THEN
        dbms_output.put_line(SQLERRM);
   WHEN OTHERS THEN
        dbms_output.put_line(SQLERRM);
END;









/
ALTER TRIGGER "AXIS"."ACTUALIZA_GARANPRO" ENABLE;
