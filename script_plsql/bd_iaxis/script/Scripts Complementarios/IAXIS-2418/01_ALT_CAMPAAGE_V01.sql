/* Formatted on 28/02/2019 11:00*/
/* **************************** 28/02/2019 11:00 **********************************************************************
Versión           Descripción
01.               -Este script adiciona las columnas iproduccion e irecaudo en la tabla campaage.
TCS-25            28/02/2019 Daniel Rodríguez
***********************************************************************************************************************/
ALTER TABLE "CAMPAAGE" ADD (IPRODUCCION NUMBER, IRECAUDO NUMBER);
COMMENT ON COLUMN "CAMPAAGE"."IPRODUCCION" IS 'Produccion';
COMMENT ON COLUMN "CAMPAAGE"."IRECAUDO" IS 'Recaudo';


