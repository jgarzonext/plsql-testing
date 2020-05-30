--------------------------------------------------------
--  DDL for Trigger SPRODUC_ACTIVIPROD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."SPRODUC_ACTIVIPROD" 
   BEFORE INSERT OR UPDATE
   ON activiprod
   FOR EACH ROW
BEGIN
   IF :NEW.cramo IS NOT NULL
      AND :NEW.cmodali IS NOT NULL
      AND :NEW.ctipseg IS NOT NULL
      AND :NEW.ccolect IS NOT NULL THEN
      SELECT sproduc
        INTO :NEW.sproduc
        FROM productos
       WHERE cramo = :NEW.cramo
         AND cmodali = :NEW.cmodali
         AND ctipseg = :NEW.ctipseg
         AND ccolect = :NEW.ccolect;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      :NEW.sproduc := NULL;
END;







/
ALTER TRIGGER "AXIS"."SPRODUC_ACTIVIPROD" ENABLE;
