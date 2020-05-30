--------------------------------------------------------
--  DDL for Procedure P_MODELCARTA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_MODELCARTA" (pcmodelo IN NUMBER, pcbloque IN NUMBER,
				pcidioma IN NUMBER, texto IN OUT VARCHAR2)
authid current_user IS
/***************************************************************************
	P_MODELCARTA: Selecciona el texto del bloque que elegimos de un
			  modelo de carta.
***************************************************************************/
BEGIN
  	SELECT ttextos INTO texto
	FROM DETMODELO
	WHERE cbloque = pcbloque
	AND   cmodelo = pcmodelo
	AND	cidioma = pcidioma;
EXCEPTION
	WHEN OTHERS THEN
		null;
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."P_MODELCARTA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_MODELCARTA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_MODELCARTA" TO "PROGRAMADORESCSI";
