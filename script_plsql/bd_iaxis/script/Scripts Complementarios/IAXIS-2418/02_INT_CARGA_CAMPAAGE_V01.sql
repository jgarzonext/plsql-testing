/* Formatted on 25/02/2019 11:00*/
/* **************************** 28/02/2019 11:00 **********************************************************************
Versi�n           Descripci�n
01.               -Este script adiciona las columnas finicam, ffincam, ctipage, iproduccion, irecaudo, en la tabla int_carga_campage.
TCS-25            28/02/2019 Daniel Rodr�guez
***********************************************************************************************************************/
ALTER TABLE "INT_CARGA_CAMPAAGE" ADD (FINICAM DATE, FFINCAM DATE, CTIPAGE NUMBER, IPRODUCCION NUMBER, IRECAUDO NUMBER);
ALTER TABLE "INT_CARGA_CAMPAAGE" DROP CONSTRAINT "INT_CARGA_CAMPAAGE_PK";
COMMENT ON COLUMN "INT_CARGA_CAMPAAGE"."FINICAM" IS 'Fecha Inicio campa�a para el agente';
COMMENT ON COLUMN "INT_CARGA_CAMPAAGE"."FFINCAM" IS 'Fecha Final campa�a para el agente';
COMMENT ON COLUMN "INT_CARGA_CAMPAAGE"."CTIPAGE" IS 'Tipo de agente';
COMMENT ON COLUMN "INT_CARGA_CAMPAAGE"."IPRODUCCION" IS 'Produccion';
COMMENT ON COLUMN "INT_CARGA_CAMPAAGE"."IRECAUDO" IS 'Recaudo';

