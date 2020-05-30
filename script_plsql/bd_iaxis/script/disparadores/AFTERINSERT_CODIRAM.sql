--------------------------------------------------------
--  DDL for Trigger AFTERINSERT_CODIRAM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."AFTERINSERT_CODIRAM" 
   AFTER INSERT
   ON codiram
   FOR EACH ROW
BEGIN
   INSERT INTO contadores
               (ccontad, ncontad)
        VALUES ('01' || LPAD(TO_CHAR(:NEW.cramo), LENGTH(:NEW.cramo), '0'), 1);

   INSERT INTO contadores
               (ccontad, ncontad)
        VALUES ('02' || LPAD(TO_CHAR(:NEW.cramo), LENGTH(:NEW.cramo), '0'), 1);
--EXCEPTION
--  RAISE_APLICATION_ERROR(1000,SQLERRM);
END;








/
ALTER TRIGGER "AXIS"."AFTERINSERT_CODIRAM" ENABLE;
