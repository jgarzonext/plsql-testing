--------------------------------------------------------
--  DDL for Trigger ACTUALIZA_SINIESTROS_FESTSIN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."ACTUALIZA_SINIESTROS_FESTSIN" 
  AFTER INSERT OR UPDATE OF festsin ON siniestros
  FOR EACH ROW
DECLARE
  festsin_ant	DATE;
  festsin_act	DATE;
  num_err	NUMBER	:=0;
  l_fcierre     DATE;
  l_cempres     NUMBER;
BEGIN
  festsin_act 	:= :new.festsin;
  IF festsin_act IS NOT NULL THEN
     SELECT cempres INTO l_cempres
     FROM seguros
     WHERE sseguro = :new.sseguro;
     SELECT MAX(fcierre) INTO l_fcierre
     FROM cierres
     WHERE cempres = l_cempres
       AND ctipo = 2
       AND cestado = 1;
    IF festsin_act <= l_fcierre AND l_fcierre IS NOT NULL THEN
      raise_application_error(-20001,'Error : Data de tancament de sinistre no permesa');
    END IF;
  END IF;
END;









/
ALTER TRIGGER "AXIS"."ACTUALIZA_SINIESTROS_FESTSIN" ENABLE;
