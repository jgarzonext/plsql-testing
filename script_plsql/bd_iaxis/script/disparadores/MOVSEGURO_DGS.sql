--------------------------------------------------------
--  DDL for Trigger MOVSEGURO_DGS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."MOVSEGURO_DGS" 
BEFORE INSERT or update ON movseguro
FOR EACH ROW
DECLARE
BEGIN
  IF :NEW.femisio IS NOT NULL
  THEN
    PAC_COBFALL_DGS.p_grabar_movimiento (:new.sseguro,:new.fefecto,:new.cmotmov);
  END IF;
EXCEPTION
  WHEN OTHERS THEN
    NULL;
END MOVSEGURO_DGS;









/
ALTER TRIGGER "AXIS"."MOVSEGURO_DGS" DISABLE;
