--------------------------------------------------------
--  DDL for Trigger ACTUALIZA_PAGOSINI_FORDPAG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."ACTUALIZA_PAGOSINI_FORDPAG" 
  AFTER INSERT OR UPDATE OF fordpag ON pagosini
  FOR EACH ROW
DECLARE
  fordpag_act DATE;
  num_err NUMBER :=0;
  l_fcierre     DATE;
  l_cempres     NUMBER;
BEGIN
  fordpag_act  := :new.fordpag;
  IF fordpag_act IS NOT NULL THEN
     SELECT cempres INTO l_cempres
     FROM seguros
     WHERE sseguro = (select sseguro
                      from siniestros
                      where nsinies = :new.nsinies);
     SELECT MAX(fcierre) INTO l_fcierre
     FROM cierres
     WHERE cempres = l_cempres
       AND ctipo = 2
       AND cestado = 1;
    IF fordpag_act <= l_fcierre AND l_fcierre IS NOT NULL THEN
      raise_application_error(-20001,'Error : Data de tancament de sinistre no permesa');
    END IF;
  END IF;
END;









/
ALTER TRIGGER "AXIS"."ACTUALIZA_PAGOSINI_FORDPAG" ENABLE;
