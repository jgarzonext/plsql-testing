--------------------------------------------------------
--  DDL for Table RRC_SAM
--------------------------------------------------------

  CREATE TABLE "AXIS"."RRC_SAM" 
   (	"CEMPRES" NUMBER(2,0), 
	"FCALCUL" DATE, 
	"SPROCES" NUMBER, 
	"CRAMDGS" NUMBER(4,0), 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"NRIESGO" NUMBER(6,0), 
	"NPOLIZA" NUMBER, 
	"NCERTIF" NUMBER, 
	"NRECIBO" NUMBER, 
	"CGARANT" NUMBER(4,0), 
	"FEFEINI" DATE, 
	"FFINEFE" DATE, 
	"IPRIRRC" NUMBER, 
	"SPRODUC" NUMBER(6,0), 
	"CMONEDA" NUMBER, 
	"FCAMBIO" DATE, 
	"ITASA" NUMBER, 
	"IPRIRRC_MONCON" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."RRC_SAM"."CEMPRES" IS 'Código de empresa';
   COMMENT ON COLUMN "AXIS"."RRC_SAM"."FCALCUL" IS 'Fecha de efecto de cálculo de la provisión';
   COMMENT ON COLUMN "AXIS"."RRC_SAM"."SPROCES" IS 'Código de proceso';
   COMMENT ON COLUMN "AXIS"."RRC_SAM"."CRAMDGS" IS 'Código ramo DGS';
   COMMENT ON COLUMN "AXIS"."RRC_SAM"."CRAMO" IS 'Código de ramo';
   COMMENT ON COLUMN "AXIS"."RRC_SAM"."CMODALI" IS 'Código de modalidad';
   COMMENT ON COLUMN "AXIS"."RRC_SAM"."CTIPSEG" IS 'Código de tipo de seguro';
   COMMENT ON COLUMN "AXIS"."RRC_SAM"."CCOLECT" IS 'Código de colectividad';
   COMMENT ON COLUMN "AXIS"."RRC_SAM"."SSEGURO" IS 'Identificador del seguro';
   COMMENT ON COLUMN "AXIS"."RRC_SAM"."NMOVIMI" IS 'Número de movimiento del seguro';
   COMMENT ON COLUMN "AXIS"."RRC_SAM"."NRIESGO" IS 'Número de riesgo';
   COMMENT ON COLUMN "AXIS"."RRC_SAM"."NPOLIZA" IS 'Número de póliza';
   COMMENT ON COLUMN "AXIS"."RRC_SAM"."NCERTIF" IS 'Número de certificado';
   COMMENT ON COLUMN "AXIS"."RRC_SAM"."NRECIBO" IS 'Número de recibo';
   COMMENT ON COLUMN "AXIS"."RRC_SAM"."CGARANT" IS 'Código de garantía';
   COMMENT ON COLUMN "AXIS"."RRC_SAM"."FEFEINI" IS 'Fecha inicio del periodo';
   COMMENT ON COLUMN "AXIS"."RRC_SAM"."FFINEFE" IS 'Fecha fin del periodo';
   COMMENT ON COLUMN "AXIS"."RRC_SAM"."IPRIRRC" IS 'Prima riesgo en curso del periodo';
   COMMENT ON COLUMN "AXIS"."RRC_SAM"."SPRODUC" IS 'Código de producto';
   COMMENT ON COLUMN "AXIS"."RRC_SAM"."CMONEDA" IS 'Moneda de la poliza tratada';
   COMMENT ON COLUMN "AXIS"."RRC_SAM"."FCAMBIO" IS 'Fecha utilizada para el cálculo de los contravalores';
   COMMENT ON COLUMN "AXIS"."RRC_SAM"."ITASA" IS 'valor de la tasa de contravalor de multimoneda';
   COMMENT ON COLUMN "AXIS"."RRC_SAM"."IPRIRRC_MONCON" IS 'Prima riesgo en curso en el periodo moneda de la contabilidad';
   COMMENT ON TABLE "AXIS"."RRC_SAM"  IS 'Reserva Riesco en Curso';
  GRANT UPDATE ON "AXIS"."RRC_SAM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."RRC_SAM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."RRC_SAM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."RRC_SAM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."RRC_SAM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."RRC_SAM" TO "PROGRAMADORESCSI";
