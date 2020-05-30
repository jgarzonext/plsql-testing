--------------------------------------------------------
--  DDL for Table PPNC_REA_PREVIO
--------------------------------------------------------

  CREATE TABLE "AXIS"."PPNC_REA_PREVIO" 
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
	"CGARANT" NUMBER(4,0), 
	"CCOMPANI" NUMBER(3,0), 
	"FEFEINI" DATE, 
	"FFINEFE" DATE, 
	"IPDEVRC" NUMBER, 
	"IPNCSRC" NUMBER, 
	"ICOMRC" NUMBER, 
	"ICNCSRC" NUMBER, 
	"SPRODUC" NUMBER(6,0), 
	"CMONEDA" NUMBER, 
	"FCAMBIO" DATE, 
	"ITASA" NUMBER, 
	"IPDEVRC_MONCON" NUMBER, 
	"IPNCSRC_MONCON" NUMBER, 
	"ICOMRC_MONCON" NUMBER, 
	"ICNCSRC_MONCON" NUMBER, 
	"NTRAMO" NUMBER DEFAULT 1, 
	"NCONTRATO" NUMBER(6,0), 
	"NVERSION" NUMBER(2,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."CEMPRES" IS 'Código de empresa';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."FCALCUL" IS 'Fecha de efecto de cálculo de la provisión';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."SPROCES" IS 'Código de proceso';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."CRAMDGS" IS 'Código ramo DGS';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."CRAMO" IS 'Código de ramo';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."CMODALI" IS 'Código de modalidad';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."CTIPSEG" IS 'Código de tipo de seguro';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."CCOLECT" IS 'Código de colectividad';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."SSEGURO" IS 'Identificador del seguro';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."NMOVIMI" IS 'Número de movimiento del seguro';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."NRIESGO" IS 'Número de riesgo';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."NPOLIZA" IS 'Número de póliza';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."NCERTIF" IS 'Número de certificado';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."CGARANT" IS 'Código de garantía';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."CCOMPANI" IS 'Código de compania';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."FEFEINI" IS 'Fecha inicio del periodo';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."FFINEFE" IS 'Fecha fin del periodo';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."IPDEVRC" IS 'Prima total de reaseguro del periodo';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."IPNCSRC" IS 'Prima no consumida de reaseguro del periodo';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."ICOMRC" IS 'Comisión del reaseguro cedido';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."ICNCSRC" IS 'Comisión del reaseguro cedido no consumida';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."SPRODUC" IS 'Código de producto';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."CMONEDA" IS 'Moneda de la poliza tratada';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."FCAMBIO" IS 'Fecha utilizada para el cálculo de los contravalores';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."ITASA" IS 'valor de la tasa de contravalor de multimoneda';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."IPDEVRC_MONCON" IS 'Prima total de reaseguro del periodo moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."IPNCSRC_MONCON" IS 'Prima no consumida de reaseguro del periodo moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."ICOMRC_MONCON" IS 'Comisión del reaseguro cedido moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."ICNCSRC_MONCON" IS 'Comisión del reaseguro cedido no consumida moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."NTRAMO" IS 'Nº de tramo de reaseguro';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."NCONTRATO" IS 'Nº de contrato de reaseguro';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."NVERSION" IS 'Nº de la versión del contrato de reaseguro';
   COMMENT ON TABLE "AXIS"."PPNC_REA_PREVIO"  IS 'Provisión Prima No Consumida Reaseguro (previo)';
  GRANT UPDATE ON "AXIS"."PPNC_REA_PREVIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PPNC_REA_PREVIO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PPNC_REA_PREVIO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PPNC_REA_PREVIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PPNC_REA_PREVIO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PPNC_REA_PREVIO" TO "PROGRAMADORESCSI";
