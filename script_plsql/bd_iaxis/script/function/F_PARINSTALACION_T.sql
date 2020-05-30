--------------------------------------------------------
--  DDL for Function F_PARINSTALACION_T
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_PARINSTALACION_T" (p_cparame IN VARCHAR2)
   RETURN VARCHAR2 AUTHID CURRENT_USER IS
/*************************************************************************
   FUNCTION F_PARINSTALACION_T
   Obtiene el valor de un par�metro de PARINSTALACION de tipo Texto
     param in p_cparame : c�digo del par�metro
     return             : el valor del par�metro
*************************************************************************/
BEGIN
   -- BUG 8999 - 29/11/2010 - JMP - Se llama al PAC_PARAMETROS
   RETURN pac_parametros.f_parinstalacion_t(UPPER(p_cparame));
EXCEPTION
   WHEN NO_DATA_FOUND THEN
      RETURN NULL;
END f_parinstalacion_t;
 
 

/

  GRANT EXECUTE ON "AXIS"."F_PARINSTALACION_T" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_PARINSTALACION_T" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_PARINSTALACION_T" TO "PROGRAMADORESCSI";
