--------------------------------------------------------
--  DDL for Trigger INFORMA_CGESCOB
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."INFORMA_CGESCOB" 
   BEFORE INSERT
   ON movrecibo
   FOR EACH ROW
BEGIN
   /*********************************
    Hereda el cgescob del recibo
   **********************************/
   SELECT cgescob
     INTO :NEW.cgescob
     FROM recibos
    WHERE nrecibo = :NEW.nrecibo;
EXCEPTION
   WHEN OTHERS THEN
      :NEW.cgescob := NULL;
END;









/
ALTER TRIGGER "AXIS"."INFORMA_CGESCOB" ENABLE;
