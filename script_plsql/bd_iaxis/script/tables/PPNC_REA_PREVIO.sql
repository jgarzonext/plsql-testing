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

   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."CEMPRES" IS 'C�digo de empresa';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."FCALCUL" IS 'Fecha de efecto de c�lculo de la provisi�n';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."SPROCES" IS 'C�digo de proceso';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."CRAMDGS" IS 'C�digo ramo DGS';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."CRAMO" IS 'C�digo de ramo';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."CMODALI" IS 'C�digo de modalidad';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."CTIPSEG" IS 'C�digo de tipo de seguro';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."CCOLECT" IS 'C�digo de colectividad';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."SSEGURO" IS 'Identificador del seguro';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."NMOVIMI" IS 'N�mero de movimiento del seguro';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."NRIESGO" IS 'N�mero de riesgo';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."NPOLIZA" IS 'N�mero de p�liza';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."NCERTIF" IS 'N�mero de certificado';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."CGARANT" IS 'C�digo de garant�a';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."CCOMPANI" IS 'C�digo de compania';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."FEFEINI" IS 'Fecha inicio del periodo';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."FFINEFE" IS 'Fecha fin del periodo';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."IPDEVRC" IS 'Prima total de reaseguro del periodo';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."IPNCSRC" IS 'Prima no consumida de reaseguro del periodo';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."ICOMRC" IS 'Comisi�n del reaseguro cedido';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."ICNCSRC" IS 'Comisi�n del reaseguro cedido no consumida';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."SPRODUC" IS 'C�digo de producto';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."CMONEDA" IS 'Moneda de la poliza tratada';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."FCAMBIO" IS 'Fecha utilizada para el c�lculo de los contravalores';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."ITASA" IS 'valor de la tasa de contravalor de multimoneda';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."IPDEVRC_MONCON" IS 'Prima total de reaseguro del periodo moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."IPNCSRC_MONCON" IS 'Prima no consumida de reaseguro del periodo moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."ICOMRC_MONCON" IS 'Comisi�n del reaseguro cedido moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."ICNCSRC_MONCON" IS 'Comisi�n del reaseguro cedido no consumida moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."NTRAMO" IS 'N� de tramo de reaseguro';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."NCONTRATO" IS 'N� de contrato de reaseguro';
   COMMENT ON COLUMN "AXIS"."PPNC_REA_PREVIO"."NVERSION" IS 'N� de la versi�n del contrato de reaseguro';
   COMMENT ON TABLE "AXIS"."PPNC_REA_PREVIO"  IS 'Provisi�n Prima No Consumida Reaseguro (previo)';
  GRANT UPDATE ON "AXIS"."PPNC_REA_PREVIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PPNC_REA_PREVIO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PPNC_REA_PREVIO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PPNC_REA_PREVIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PPNC_REA_PREVIO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PPNC_REA_PREVIO" TO "PROGRAMADORESCSI";
