--------------------------------------------------------
--  DDL for Function F_PARINSTALACION_N
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_PARINSTALACION_N" (p_cparame IN VARCHAR2)
   RETURN NUMBER AUTHID CURRENT_USER IS
/*************************************************************************
   FUNCTION F_PARINSTALACION_N
   Obtiene el valor de un par�metro de PARINSTALACION de tipo num�rico
     param in p_cparame : c�digo del par�metro
     return             : el valor del par�metro
*************************************************************************/
BEGIN
   -- BUG 8999 - 29/11/2010 - JMP - Se llama al PAC_PARAMETROS
   RETURN pac_parametros.f_parinstalacion_n(UPPER(p_cparame));
EXCEPTION
   WHEN NO_DATA_FOUND THEN
      RETURN NULL;
END f_parinstalacion_n;
 
 

/

  GRANT EXECUTE ON "AXIS"."F_PARINSTALACION_N" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_PARINSTALACION_N" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_PARINSTALACION_N" TO "PROGRAMADORESCSI";
