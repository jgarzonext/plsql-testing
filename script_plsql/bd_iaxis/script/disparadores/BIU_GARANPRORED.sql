--------------------------------------------------------
--  DDL for Trigger BIU_GARANPRORED
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BIU_GARANPRORED" 
   BEFORE UPDATE OR INSERT
   ON garanprored
   FOR EACH ROW
BEGIN
   -- si el campo FBAJA no es nulo, es decir, se está dando de baja una garantia,
   -- hay que asegurarse que el campo FMOVFIN tambien esté informado
   IF :NEW.fbaja IS NOT NULL THEN
      IF :NEW.fmovfin IS NULL THEN
         :NEW.fmovfin := :NEW.fbaja;
      END IF;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      NULL;
END biu_garanprored;







/
ALTER TRIGGER "AXIS"."BIU_GARANPRORED" ENABLE;
