--------------------------------------------------------
--  DDL for Trigger ACTUALIZA_SEGUREDCOM_FANULAC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."ACTUALIZA_SEGUREDCOM_FANULAC" 
  AFTER UPDATE OF fanulac ON SEGUROS
  FOR EACH ROW
DECLARE
  fanulac_ant	DATE;
  fanulac_act	DATE;
  sseg		NUMBER;
  cemp		NUMBER;
  cage_ant	NUMBER;
  cage_act	NUMBER;
  num_err	NUMBER	:=0;
BEGIN
  fanulac_ant 	:= :OLD.fanulac;
  fanulac_act 	:= :NEW.fanulac;
  sseg		:= :NEW.sseguro;
  cemp		:= :NEW.cempres;
  cage_ant	:= :OLD.cagente;
  cage_act   	:= :NEW.cagente;
  IF fanulac_ant IS NULL AND fanulac_act IS NOT NULL THEN
    num_err := pac_redcomercial.actualiza_anulacion_seguredcom(sseg, fanulac_act);
    IF num_err <> 0 THEN
      RAISE_APPLICATION_ERROR(-20001,'Error al llamar la funcion actualiza_anulacion_seguredcom
		desde el TRIGGER actualiza_seguredcom_fanulac');
    END IF;
  ELSIF fanulac_ant IS NOT NULL AND fanulac_act IS NULL THEN
    num_err := pac_redcomercial.rehabilitacion_seguro(sseg, cage_act, cemp,
			fanulac_ant, cage_ant);
    IF num_err <> 0 THEN
--      raise_application_error(-20002,'Error al llamar la funcion rehabilitacion_seguro desde
--		el trigger actualiza_seguredcom_fanulac '||num_err);
      RAISE_APPLICATION_ERROR(-20002,'Error '||num_err||SQLERRM);
    END IF;
  END IF;
END;









/
ALTER TRIGGER "AXIS"."ACTUALIZA_SEGUREDCOM_FANULAC" ENABLE;
