--------------------------------------------------------
--  DDL for Table IBNR_RAM
--------------------------------------------------------

  CREATE TABLE "AXIS"."IBNR_RAM" 
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

   COMMENT ON COLUMN "AXIS"."IBNR_RAM"."CEMPRES" IS 'C�digo de la Empresa';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM"."FCALCUL" IS 'Fecha del c�lculo';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM"."SPROCES" IS 'C�digo del Proceso';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM"."CRAMO" IS 'C�digo del Ramo';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM"."IIBNRSD" IS 'Importe IBNR seguro directo';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM"."IIBNRRC" IS 'Importe IBNR reaseguro cedido';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM"."FNT" IS 'Factor NT';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM"."FCT" IS 'Factor CT';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM"."CERROR" IS 'C�digo del error';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM"."SPRODUC" IS 'C�digo del producto';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM"."CMONEDA" IS 'Moneda de la poliza tratada';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM"."FCAMBIO" IS 'Fecha utilizada para el c�lculo de los contravalores';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM"."ITASA" IS 'Valor de la tasa de contravalor de multimoneda';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM"."IIBNRSD_MONCON" IS 'Importe IBNR seguro directo moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM"."IIBNRRC_MONCON" IS 'Importe IBNR reaseguro cedido moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."IBNR_RAM"."CAGRUPA" IS 'C�digo agrupaci�n producto';
   COMMENT ON TABLE "AXIS"."IBNR_RAM"  IS 'Tabla de IBNR por Ramo y Producto';
  GRANT UPDATE ON "AXIS"."IBNR_RAM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IBNR_RAM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."IBNR_RAM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."IBNR_RAM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IBNR_RAM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."IBNR_RAM" TO "PROGRAMADORESCSI";
