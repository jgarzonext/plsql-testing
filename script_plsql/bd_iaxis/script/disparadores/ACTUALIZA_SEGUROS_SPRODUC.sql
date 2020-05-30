--------------------------------------------------------
--  DDL for Trigger ACTUALIZA_SEGUROS_SPRODUC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."ACTUALIZA_SEGUROS_SPRODUC" 
   BEFORE INSERT
   ON seguros
   FOR EACH ROW
DECLARE
   nproduc        NUMBER;
BEGIN
   SELECT sproduc
     INTO nproduc
     FROM productos
    WHERE cramo = :NEW.cramo
      AND cmodali = :NEW.cmodali
      AND ctipseg = :NEW.ctipseg
      AND ccolect = :NEW.ccolect;

   :NEW.sproduc := nproduc;
EXCEPTION
   WHEN VALUE_ERROR THEN
      NULL;
   WHEN OTHERS THEN
      NULL;
END;




/
ALTER TRIGGER "AXIS"."ACTUALIZA_SEGUROS_SPRODUC" DISABLE;
