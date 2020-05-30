--------------------------------------------------------
--  DDL for Trigger BIU_PRODREPREC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BIU_PRODREPREC" 
   BEFORE INSERT
   ON prodreprec
   FOR EACH ROW
DECLARE
   vcont          NUMBER;
BEGIN
   -- Cerramos posibles periodos anteriores para el mismo
   -- producto y tipo de recibo impagado (VF.212)
   UPDATE prodreprec
      SET ffinefe = GREATEST(finiefe, :NEW.finiefe)
    WHERE sproduc = :NEW.sproduc
      AND ctipoimp = :NEW.ctipoimp
      AND NVL(ccobban, -1) = NVL(:NEW.ccobban, -1)
      AND sidprodp != :NEW.sidprodp
      AND ffinefe IS NULL;
EXCEPTION
   WHEN OTHERS THEN
      -- Consider logging the error and then re-raise
      RAISE;
END;




/
ALTER TRIGGER "AXIS"."BIU_PRODREPREC" ENABLE;
