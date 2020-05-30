--------------------------------------------------------
--  DDL for Function F_DESCLAUSULA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_DESCLAUSULA" (psclagen IN NUMBER, pntexto IN NUMBER,
pcidioma IN NUMBER, pttexto IN OUT VARCHAR2)
RETURN NUMBER authid current_user IS
/***********************************************************************
	F_DESPRODUCTO: Obtenci�n del T�tulo o R�tulo de una Cl�usula.
	ALLIBMFM
***********************************************************************/
	num_err		NUMBER;
	pctitulo	NUMBER;
BEGIN
	num_err := 101789; 	-- Cl�usula inexistent
	pttexto := NULL;
	SELECT DECODE(pntexto, 1, tclatit, 2, tclatex)
	INTO	pttexto
	FROM	CLAUSUGEN
	WHERE	sclagen = psclagen
		AND cidioma = pcidioma;
	RETURN 0;
EXCEPTION
	WHEN others THEN
		RETURN num_err;
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."F_DESCLAUSULA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_DESCLAUSULA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_DESCLAUSULA" TO "PROGRAMADORESCSI";
