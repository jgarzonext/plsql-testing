--------------------------------------------------------
--  DDL for Procedure P_NUMERAR_TARJETA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_NUMERAR_TARJETA" (p_sseguro number,p_nriesgo number,p_ntarjeta  out varchar2) IS
                  v_tipo_producto varchar2(10);
BEGIN
/**********************************************************************************
 * P_NUMERAR_TARJETA:                                                             *
 * procedimiento para calcular el número de tarjeta dados los parámetros sseguro y*
 * nriesgo. Segun el tipo de producto llamará a las rutinas correspondientes.     *                                                                  *
 * 					                                          *
 **********************************************************************************/
-- parámetros sseguro y nriesgo.
 SELECT clase into v_tipo_producto
 FROM TIPOS_PRODUCTO TP,SEGUROS SEG
 WHERE TP.CTIPSEG = SEG.CTIPSEG AND
       TP.CRAMO = SEG.CRAMO AND
       TP.CMODALI = SEG.CMODALI AND
       TP.CCOLECT = SEG.CCOLECT AND
       SEG.SSEGURO = P_SSEGURO;
p_ntarjeta := NULL;
EXCEPTION WHEN NO_DATA_FOUND THEN
  p_ntarjeta := NULL;
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."P_NUMERAR_TARJETA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_NUMERAR_TARJETA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_NUMERAR_TARJETA" TO "PROGRAMADORESCSI";
