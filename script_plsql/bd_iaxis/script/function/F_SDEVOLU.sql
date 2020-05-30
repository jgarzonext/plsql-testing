--------------------------------------------------------
--  DDL for Function F_SDEVOLU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_SDEVOLU" 
RETURN NUMBER authid current_user IS
/***********************************************************************
	F_SDEVOLU: Seg�ent n�mero de la seq��ncia SDEVOLU.
	ALLIBMFM
***********************************************************************/
	aux	NUMBER;
BEGIN
	SELECT SDEVOLU.NEXTVAL INTO aux FROM DUAL;
	RETURN (aux);
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."F_SDEVOLU" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_SDEVOLU" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_SDEVOLU" TO "PROGRAMADORESCSI";
