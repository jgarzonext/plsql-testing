--------------------------------------------------------
--  DDL for Trigger DEL_SIN_TRAMITA_MOVPAGO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."DEL_SIN_TRAMITA_MOVPAGO" 
   AFTER INSERT
   ON sin_tramita_movpago
   FOR EACH ROW
             WHEN (NEW.cestpag = 0
        AND NEW.cestpagant = 2) DECLARE
   num_err        NUMBER;
   vnsinies       sin_tramita_pago.nsinies%TYPE;
BEGIN
   SELECT nsinies
     INTO vnsinies
     FROM sin_tramita_pago
    WHERE sidepag = :NEW.sidepag;

   num_err := pac_siniestros.f_del_ins_rea(vnsinies, :NEW.sidepag);

   IF num_err <> 0 THEN
      raise_application_error(-20001, 'Error en el reaseguro');
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      raise_application_error(-20001, 'Error en el reaseguro');
END del_sin_tramita_movpago;









/
ALTER TRIGGER "AXIS"."DEL_SIN_TRAMITA_MOVPAGO" ENABLE;
