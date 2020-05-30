--------------------------------------------------------
--  DDL for Table PPNA
--------------------------------------------------------

  CREATE TABLE "AXIS"."PPNA" 
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
	"IPRIDEV" NUMBER(13,2), 
	"IPRINCS" NUMBER(13,2), 
	"IPDEVRC" NUMBER(13,2), 
	"IPNCSRC" NUMBER(13,2), 
	"FEFEINI" DATE, 
	"FFINEFE" DATE, 
	"ICOMAGE" NUMBER(13,2), 
	"ICOMNCS" NUMBER(13,2), 
	"SPRODUC" NUMBER(6,0), 
	"ICOMRC" NUMBER(13,2), 
	"ICNCSRC" NUMBER(13,2), 
	"IRECFRA" NUMBER(13,2), 
	"PRECARG" NUMBER(13,2) DEFAULT 0, 
	"IRECFRANC" NUMBER(13,2) DEFAULT 0, 
	"CMONEDA" NUMBER, 
	"FCAMBIO" DATE, 
	"ITASA" NUMBER, 
	"IPRIDEV_MONCON" NUMBER, 
	"IPRINCS_MONCON" NUMBER, 
	"IPDEVRC_MONCON" NUMBER, 
	"IPNCSRC_MONCON" NUMBER, 
	"ICOMAGE_MONCON" NUMBER, 
	"ICOMNCS_MONCON" NUMBER, 
	"ICOMRC_MONCON" NUMBER, 
	"ICNCSRC_MONCON" NUMBER, 
	"IRECFRA_MONCON" NUMBER, 
	"IRECFRANC_MONCON" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PPNA"."CEMPRES" IS 'Código empresa';
   COMMENT ON COLUMN "AXIS"."PPNA"."FCALCUL" IS 'Fecha de cálculo';
   COMMENT ON COLUMN "AXIS"."PPNA"."SPROCES" IS 'Identificador de proceso';
   COMMENT ON COLUMN "AXIS"."PPNA"."CRAMDGS" IS 'Código ramo DGS';
   COMMENT ON COLUMN "AXIS"."PPNA"."CRAMO" IS 'Código ramo';
   COMMENT ON COLUMN "AXIS"."PPNA"."CMODALI" IS 'Código modalidad';
   COMMENT ON COLUMN "AXIS"."PPNA"."CTIPSEG" IS 'Código tipo de seguro';
   COMMENT ON COLUMN "AXIS"."PPNA"."CCOLECT" IS 'Código de colectividad';
   COMMENT ON COLUMN "AXIS"."PPNA"."SSEGURO" IS 'Número consecutivo de seguro asignado automáticamente.';
   COMMENT ON COLUMN "AXIS"."PPNA"."NMOVIMI" IS 'Número de movimiento';
   COMMENT ON COLUMN "AXIS"."PPNA"."NRIESGO" IS 'Número de riesgo';
   COMMENT ON COLUMN "AXIS"."PPNA"."NPOLIZA" IS 'Número de póliza';
   COMMENT ON COLUMN "AXIS"."PPNA"."NCERTIF" IS 'Número de certificado';
   COMMENT ON COLUMN "AXIS"."PPNA"."CGARANT" IS 'Código de garantía';
   COMMENT ON COLUMN "AXIS"."PPNA"."IPRIDEV" IS 'Prima devengada (prima neta)';
   COMMENT ON COLUMN "AXIS"."PPNA"."IPRINCS" IS 'Prima no consumida';
   COMMENT ON COLUMN "AXIS"."PPNA"."IPDEVRC" IS 'Prima cedida';
   COMMENT ON COLUMN "AXIS"."PPNA"."IPNCSRC" IS 'Prima cedida no consumida';
   COMMENT ON COLUMN "AXIS"."PPNA"."FEFEINI" IS 'Fecha inició efecto';
   COMMENT ON COLUMN "AXIS"."PPNA"."FFINEFE" IS 'Fecha fin efecto';
   COMMENT ON COLUMN "AXIS"."PPNA"."ICOMAGE" IS 'Comisión del agente';
   COMMENT ON COLUMN "AXIS"."PPNA"."ICOMNCS" IS 'Comisión del agente no consumida';
   COMMENT ON COLUMN "AXIS"."PPNA"."SPRODUC" IS 'Código de producto';
   COMMENT ON COLUMN "AXIS"."PPNA"."ICOMRC" IS 'Comisión del reaseguro cedido';
   COMMENT ON COLUMN "AXIS"."PPNA"."ICNCSRC" IS 'Comisión del reaseguro cedido no consumida';
   COMMENT ON COLUMN "AXIS"."PPNA"."IRECFRA" IS 'Recargo por fraccionamiento';
   COMMENT ON COLUMN "AXIS"."PPNA"."PRECARG" IS 'Porcentaje de recargo por fraccionamiento';
   COMMENT ON COLUMN "AXIS"."PPNA"."IRECFRANC" IS 'ecargo por fraccionamiento no consumido';
   COMMENT ON COLUMN "AXIS"."PPNA"."CMONEDA" IS 'Moneda de la poliza tratada';
   COMMENT ON COLUMN "AXIS"."PPNA"."FCAMBIO" IS 'Fecha utilizada para el cálculo de los contravalores';
   COMMENT ON COLUMN "AXIS"."PPNA"."ITASA" IS 'valor de la tasa de contravalor de multimoneda';
   COMMENT ON COLUMN "AXIS"."PPNA"."IPRIDEV_MONCON" IS 'Prima total del periodo moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNA"."IPRINCS_MONCON" IS 'Prima no consumida en el periodo moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNA"."IPDEVRC_MONCON" IS 'Prima total de reaseguro del periodo moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNA"."IPNCSRC_MONCON" IS 'Prima no consumida de reaseguro del periodo moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNA"."ICOMAGE_MONCON" IS 'Comisión del agente moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNA"."ICOMNCS_MONCON" IS 'Comisión del agente no consumida moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNA"."ICOMRC_MONCON" IS 'Comisión del reaseguro cedido moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNA"."ICNCSRC_MONCON" IS 'Comisión del reaseguro cedido no consumida moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNA"."IRECFRA_MONCON" IS 'Recargo por fraccionamiento moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNA"."IRECFRANC_MONCON" IS 'Recargo por fraccionamiento no consumido moneda de la contabilidad';
   COMMENT ON TABLE "AXIS"."PPNA"  IS 'PPNA - Provisión de Primas No Adquiridas';
  GRANT UPDATE ON "AXIS"."PPNA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PPNA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PPNA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PPNA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PPNA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PPNA" TO "PROGRAMADORESCSI";
