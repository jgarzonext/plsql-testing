--------------------------------------------------------
--  DDL for Function F_DOM_PRIMER_RECIBO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_DOM_PRIMER_RECIBO" (psproduc IN NUMBER, pcusuario IN VARCHAR2, pcmotmov IN NUMBER, pcheck OUT NUMBER, pactivo OUT NUMBER) RETURN NUMBER authid current_user IS

v_ctippag NUMBER;
v_cmovdom NUMBER;

/********************************************************************************/
/*
  Funci�n creada para que nos retorne entrando el c�digo de producto y el movimiento
  si ha de estar checkeada la domiciliaci�n del primer recibo y si el mismo ha de
  estar activo o no.
*/
/********************************************************************************/

BEGIN
  -- Buscamos los valores del sproduc
  BEGIN
    SELECT ctippag, cmovdom
   	INTO v_ctippag, v_cmovdom
 	FROM productos
    WHERE sproduc = psproduc;
  EXCEPTION
	WHEN OTHERS THEN
	  RETURN SQLCODE;
  END;

  IF pcmotmov = 100 THEN --Nueva producci�n then
	pcheck := v_cmovdom;
	IF v_ctippag = 2 AND v_cmovdom = 1 THEN
 	  -- Si la domiciliaci�n es bancaria y est� checkeado la domiciliaci�n del primer recibo
	  --IF f_acceso(pcusuario,'','') = 0 THEN
	  --  Si no existe acceso no se activar� la ckeck.
	  -- Esto de momento no est� operativo ya que se tiene que insertar un acceso en accesos.
	  pactivo := 1;
	  --ELSE
	  pactivo := 0;
	  --END IF;
	ELSE
	  pactivo := 1;
	END IF;
  ELSIF pcmotmov > 100 THEN
    -- Son los suplementos. Ahora de momento no se rellena nada. Se pone el valor del movimiento
	pcheck := v_cmovdom;
  END IF;
  RETURN 0;

END f_dom_primer_recibo;
 
 

/

  GRANT EXECUTE ON "AXIS"."F_DOM_PRIMER_RECIBO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_DOM_PRIMER_RECIBO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_DOM_PRIMER_RECIBO" TO "PROGRAMADORESCSI";
