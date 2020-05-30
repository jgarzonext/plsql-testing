--------------------------------------------------------
--  DDL for Trigger PREINSERT_PRODUCTOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."PREINSERT_PRODUCTOS" 
BEFORE INSERT
ON PRODUCTOS
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
   numero NUMBER;
BEGIN
   if :NEW.sproduc is null then
     select sproduc.nextval into numero from dual;
     :NEW.sproduc := numero;
   end if;
EXCEPTION
   WHEN VALUE_ERROR THEN
        dbms_output.put_line(SQLERRM);
   WHEN OTHERS THEN
        dbms_output.put_line(SQLERRM);
END;









/
ALTER TRIGGER "AXIS"."PREINSERT_PRODUCTOS" ENABLE;
