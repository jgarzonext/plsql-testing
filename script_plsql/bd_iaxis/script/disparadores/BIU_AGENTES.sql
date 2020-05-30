--------------------------------------------------------
--  DDL for Trigger BIU_AGENTES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BIU_AGENTES" 
   BEFORE INSERT OR UPDATE
   ON agentes
   FOR EACH ROW
DECLARE
   vnumerr        NUMBER;
BEGIN
   --Bug 20916/103702 - 13/01/2012 - AMC
   IF :NEW.cretenc IS NULL
      OR :NEW.ctipiva IS NULL THEN
      vnumerr := pac_redcomercial.f_get_ivaagente(:NEW.sperson, :NEW.cagente, :NEW.ctipiva,
                                                  :NEW.cretenc);
   END IF;
-- Fi Bug 20916/103702 - 13/01/2012 - AMC
EXCEPTION
   WHEN OTHERS THEN
      RAISE;
END biu_agentes;







/
ALTER TRIGGER "AXIS"."BIU_AGENTES" ENABLE;
