/* Formatted on 25/02/2019 11:00*/
/* **************************** 28/02/2019 11:00 **********************************************************************
Versión           Descripción
01.               -Este script adiciona las columnas finicam, ffincam, ctipage, iproduccion, irecaudo, en la tabla int_carga_campage.
TCS-25            28/02/2019 Daniel Rodríguez
***********************************************************************************************************************/
ALTER TABLE "INT_CARGA_CAMPAAGE" ADD (FINICAM DATE, FFINCAM DATE, CTIPAGE NUMBER, IPRODUCCION NUMBER, IRECAUDO NUMBER);
ALTER TABLE "INT_CARGA_CAMPAAGE" DROP CONSTRAINT "INT_CARGA_CAMPAAGE_PK";
COMMENT ON COLUMN "INT_CARGA_CAMPAAGE"."FINICAM" IS 'Fecha Inicio campaña para el agente';
COMMENT ON COLUMN "INT_CARGA_CAMPAAGE"."FFINCAM" IS 'Fecha Final campaña para el agente';
COMMENT ON COLUMN "INT_CARGA_CAMPAAGE"."CTIPAGE" IS 'Tipo de agente';
COMMENT ON COLUMN "INT_CARGA_CAMPAAGE"."IPRODUCCION" IS 'Produccion';
COMMENT ON COLUMN "INT_CARGA_CAMPAAGE"."IRECAUDO" IS 'Recaudo';

