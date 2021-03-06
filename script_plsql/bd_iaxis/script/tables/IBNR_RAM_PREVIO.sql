--------------------------------------------------------
--  DDL for Table IBNR_RAM_PREVIO
--------------------------------------------------------

  CREATE TABLE "AXIS"."IBNR_RAM_PREVIO" 
   (	"CEMPRES" NUMBER(2,0), 
	"FCALCUL" DATE, 
	"SPROCES" NUMBER, 
	"CRAMO" NUMBER(8,0), 
	"IIBNRSD" NUMBER DEFAULT 0, 
	"IIBNRRC" NUMBER DEFAULT 0, 
	"FNT" NUMBER DEFAULT 0, 
	"FCT" NUMBER DEFAULT 0, 
	"CERROR" NUMBER(2,0), 
	"SPRODUC" NUMBER(6,0) DEFAULT 0, 
	"CMONEDA" NUMBER, 
	"FCAMBIO" DATE, 
	"ITASA" NUMBER, 
	"IIBNRSD_MONCON" NUMBER, 
	"IIBNRRC_MONCON" NUMBER, 
	"CAGRUPA" NUMBER(3,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."IBNR_RAM_PREVIO"."CEMPRES" IS 'C�digo de la Empresa';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM_PREVIO"."FCALCUL" IS 'Fecha del c�lculo';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM_PREVIO"."SPROCES" IS 'C�digo del Proceso';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM_PREVIO"."CRAMO" IS 'C�digo del Ramo';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM_PREVIO"."IIBNRSD" IS 'Importe IBNR seguro directo';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM_PREVIO"."IIBNRRC" IS 'Importe IBNR reaseguro cedido';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM_PREVIO"."FNT" IS 'Factor NT';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM_PREVIO"."FCT" IS 'Factor CT';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM_PREVIO"."CERROR" IS 'C�digo del error';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM_PREVIO"."SPRODUC" IS 'C�digo del producto';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM_PREVIO"."CMONEDA" IS 'Moneda de la poliza tratada';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM_PREVIO"."FCAMBIO" IS 'Fecha utilizada para el c�lculo de los contravalores';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM_PREVIO"."ITASA" IS 'Valor de la tasa de contravalor de multimoneda';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM_PREVIO"."IIBNRSD_MONCON" IS 'Importe IBNR seguro directo moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM_PREVIO"."IIBNRRC_MONCON" IS 'Importe IBNR reaseguro cedido moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM_PREVIO"."CAGRUPA" IS 'C�digo agrupaci�n producto';
   COMMENT ON TABLE "AXIS"."IBNR_RAM_PREVIO"  IS 'Tabla de IBNR_PREVIO por Ramo y Producto';
  GRANT UPDATE ON "AXIS"."IBNR_RAM_PREVIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IBNR_RAM_PREVIO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."IBNR_RAM_PREVIO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."IBNR_RAM_PREVIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IBNR_RAM_PREVIO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."IBNR_RAM_PREVIO" TO "PROGRAMADORESCSI";
