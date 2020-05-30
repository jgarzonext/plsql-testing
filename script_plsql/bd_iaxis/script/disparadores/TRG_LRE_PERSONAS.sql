--------------------------------------------------------
--  DDL for Trigger TRG_LRE_PERSONAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_LRE_PERSONAS" 
   BEFORE INSERT OR UPDATE OF tnombre1, tnombre2, tapelli1, tapelli2
   ON lre_personas
   REFERENCING NEW AS NEW OLD AS OLD
   FOR EACH ROW
DECLARE
   tmpvar         NUMBER;
/******************************************************************************
   NAME:
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/09/2013             1. Created this trigger.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:
      Fecha:         16/09/2013
      Date and Time:   16/09/2013, 14:22:03, and 16/09/2013 14:22:03
      Username:         (set in TOAD Options, Proc Templates)
      Table Name:      LRE_PERSONAS (set in the "New PL/SQL Object" dialog)
      Trigger Options:  (set in the "New PL/SQL Object" dialog)
******************************************************************************/
BEGIN
   tmpvar := 0;

   IF :NEW.tnombre1 IS NOT NULL
      OR :NEW.tnombre2 IS NOT NULL
      OR :NEW.tapelli1 IS NOT NULL
      OR :NEW.tapelli2 IS NOT NULL THEN
      :NEW.tnomape := :NEW.tnombre1 || ' ' || :NEW.tnombre2 || ' , ' || :NEW.tapelli1 || ''
                      || :NEW.tapelli2;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      -- Consider logging the error and then re-raise
      RAISE;
END;







/
ALTER TRIGGER "AXIS"."TRG_LRE_PERSONAS" ENABLE;
