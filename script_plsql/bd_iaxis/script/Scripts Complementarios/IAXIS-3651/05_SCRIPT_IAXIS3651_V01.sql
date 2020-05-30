/* Formatted on 09/07/2019 11:09*/
/* **************************** 09/07/2019 11:09 **********************************************************************
Versión           Descripción
01.               -Script de creación de la tabla ADM_OUT_TARIFAS que contiene las tarifas para el año.
                  -Insert de ejemplo de tarifas para el año 2019.
IAXIS-3651         09/07/2019 Daniel Rodríguez
***********************************************************************************************************************/
--
DROP TABLE ADM_OUT_TARIFAS;
--
  CREATE TABLE ADM_OUT_TARIFAS 
   (anio             NUMBER,
    rangoini         NUMBER,
    rangofin         NUMBER,
    porcentajetarifa NUMBER(5,4),
    montomin         NUMBER, 
    montomax         NUMBER);
-- Tarifas de ejemplo. Año 2019.
  INSERT INTO adm_out_tarifas VALUES(2019,0,49,0.0100,3112,3112);
  INSERT INTO adm_out_tarifas VALUES(2019,50,74,0.0175,3492,66696);
  INSERT INTO adm_out_tarifas VALUES(2019,75,2000,0.0300,3492,90926);
  --
  COMMIT;
/   
  
