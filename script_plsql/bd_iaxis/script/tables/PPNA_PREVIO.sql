--------------------------------------------------------
--  DDL for Table PPNA_PREVIO
--------------------------------------------------------

  CREATE TABLE "AXIS"."PPNA_PREVIO" 
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
	"PRECARG" NUMBER(13,2) DEFAULT 0, 
	"IRECFRA" NUMBER(13,2) DEFAULT 0, 
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

   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."CEMPRES" IS 'Código de empresa';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."FCALCUL" IS 'Fecha de efecto de cálculo de la provisión';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."SPROCES" IS 'Código de proceso';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."CRAMDGS" IS 'Código ramo DGS';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."CRAMO" IS 'Código de ramo';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."CMODALI" IS 'Código de modalidad';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."CTIPSEG" IS 'Código de tipo de seguro';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."CCOLECT" IS 'Código de colectividad';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."SSEGURO" IS 'Identificador del seguro';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."NMOVIMI" IS 'Número de movimiento del seguro';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."NRIESGO" IS 'Número de riesgo';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."NPOLIZA" IS 'Número de póliza';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."NCERTIF" IS 'Número de certificado';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."CGARANT" IS 'Código de garantía';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."IPRIDEV" IS 'Prima total del periodo';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."IPRINCS" IS 'Prima no consumida en el periodo';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."IPDEVRC" IS 'Prima total de reaseguro del periodo';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."IPNCSRC" IS 'Prima no consumida de reaseguro del periodo';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."FEFEINI" IS 'Fecha inicio del periodo';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."FFINEFE" IS 'Fecha fin del periodo';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."ICOMAGE" IS 'Comisión del agente';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."ICOMNCS" IS 'Comisión del agente no consumida';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."SPRODUC" IS 'Código de producto';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."ICOMRC" IS 'Comisión del reaseguro cedido';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."ICNCSRC" IS 'Comisión del reaseguro cedido no consumida';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."PRECARG" IS 'Porcentaje de recargo por fraccionamiento';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."IRECFRA" IS 'Recargo por fraccionamiento';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."IRECFRANC" IS 'ecargo por fraccionamiento no consumido';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."CMONEDA" IS 'Moneda de la poliza tratada';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."FCAMBIO" IS 'Fecha utilizada para el cálculo de los contravalores';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."ITASA" IS 'valor de la tasa de contravalor de multimoneda';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."IPRIDEV_MONCON" IS 'Prima total del periodo moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."IPRINCS_MONCON" IS 'Prima no consumida en el periodo moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."IPDEVRC_MONCON" IS 'Prima total de reaseguro del periodo moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."IPNCSRC_MONCON" IS 'Prima no consumida de reaseguro del periodo moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."ICOMAGE_MONCON" IS 'Comisión del agente moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."ICOMNCS_MONCON" IS 'Comisión del agente no consumida moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."ICOMRC_MONCON" IS 'Comisión del reaseguro cedido moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."ICNCSRC_MONCON" IS 'Comisión del reaseguro cedido no consumida moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."IRECFRA_MONCON" IS 'Recargo por fraccionamiento moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNA_PREVIO"."IRECFRANC_MONCON" IS 'Recargo por fraccionamiento no consumido moneda de la contabilidad';
   COMMENT ON TABLE "AXIS"."PPNA_PREVIO"  IS 'PPNA - Provisión de Primas No Adquiridas - Cálculo Previo';
  GRANT UPDATE ON "AXIS"."PPNA_PREVIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PPNA_PREVIO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PPNA_PREVIO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PPNA_PREVIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PPNA_PREVIO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PPNA_PREVIO" TO "PROGRAMADORESCSI";
