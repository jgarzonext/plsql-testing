--------------------------------------------------------
--  DDL for Trigger BIU_REDCOMERCIAL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BIU_REDCOMERCIAL" 
   BEFORE INSERT OR UPDATE
   ON redcomercial
   FOR EACH ROW
BEGIN
   IF :NEW.cpolvisio IS NULL THEN
      :NEW.cpolvisio := NVL(:NEW.cpervisio, :NEW.cagente);
   END IF;

   IF :NEW.cpolnivel IS NULL THEN
      :NEW.cpolnivel := NVL(:NEW.cpernivel, 1);
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      RAISE;
END biu_redcomercial;








/
ALTER TRIGGER "AXIS"."BIU_REDCOMERCIAL" ENABLE;
