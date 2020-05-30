--------------------------------------------------------
--  DDL for Trigger TRG_CTACOASEGURO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_CTACOASEGURO" 
   AFTER INSERT ON ctacoaseguro
   FOR EACH ROW
DECLARE
   --
BEGIN
   --
   p_control_error('trg_ctacoaseguro', 'trg_ctacoaseguro',dbms_utility.format_call_stack);
END trg_ctacoaseguro;


/
ALTER TRIGGER "AXIS"."TRG_CTACOASEGURO" ENABLE;
