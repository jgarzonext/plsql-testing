--------------------------------------------------------
--  DDL for Table PPNC_PREVIO
--------------------------------------------------------

  CREATE TABLE "AXIS"."PPNC_PREVIO" 
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
	"IPRIDEV" NUMBER, 
	"IPRINCS" NUMBER, 
	"IPDEVRC" NUMBER, 
	"IPNCSRC" NUMBER, 
	"FEFEINI" DATE, 
	"FFINEFE" DATE, 
	"ICOMAGE" NUMBER, 
	"ICOMNCS" NUMBER, 
	"SPRODUC" NUMBER(6,0), 
	"ICOMRC" NUMBER, 
	"ICNCSRC" NUMBER, 
	"PRECARG" NUMBER DEFAULT 0, 
	"IRECFRA" NUMBER DEFAULT 0, 
	"IRECFRANC" NUMBER DEFAULT 0, 
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
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."CEMPRES" IS 'Código de empresa';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."FCALCUL" IS 'Fecha de efecto de cálculo de la provisión';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."SPROCES" IS 'Código de proceso';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."CRAMDGS" IS 'Código ramo DGS';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."CRAMO" IS 'Código de ramo';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."CMODALI" IS 'Código de modalidad';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."CTIPSEG" IS 'Código de tipo de seguro';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."CCOLECT" IS 'Código de colectividad';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."SSEGURO" IS 'Identificador del seguro';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."NMOVIMI" IS 'Número de movimiento del seguro';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."NRIESGO" IS 'Número de riesgo';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."NPOLIZA" IS 'Número de póliza';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."NCERTIF" IS 'Número de certificado';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."CGARANT" IS 'Código de garantía';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."IPRIDEV" IS 'Prima total del periodo';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."IPRINCS" IS 'Prima no consumida en el periodo';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."IPDEVRC" IS 'Prima total de reaseguro del periodo';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."IPNCSRC" IS 'Prima no consumida de reaseguro del periodo';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."FEFEINI" IS 'Fecha inicio del periodo';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."FFINEFE" IS 'Fecha fin del periodo';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."ICOMAGE" IS 'Comisión del agente';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."ICOMNCS" IS 'Comisión del agente no consumida';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."SPRODUC" IS 'Código de producto';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."ICOMRC" IS 'Comisión del reaseguro cedido';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."ICNCSRC" IS 'Comisión del reaseguro cedido no consumida';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."PRECARG" IS 'Porcentaje de recargo por fraccionamiento';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."IRECFRA" IS 'Recargo por fraccionamiento';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."IRECFRANC" IS 'ecargo por fraccionamiento no consumido';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."CMONEDA" IS 'Moneda de la poliza tratada';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."FCAMBIO" IS 'Fecha utilizada para el cálculo de los contravalores';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."ITASA" IS 'valor de la tasa de contravalor de multimoneda';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."IPRIDEV_MONCON" IS 'Prima total del periodo moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."IPRINCS_MONCON" IS 'Prima no consumida en el periodo moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."IPDEVRC_MONCON" IS 'Prima total de reaseguro del periodo moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."IPNCSRC_MONCON" IS 'Prima no consumida de reaseguro del periodo moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."ICOMAGE_MONCON" IS 'Comisión del agente moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."ICOMNCS_MONCON" IS 'Comisión del agente no consumida moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."ICOMRC_MONCON" IS 'Comisión del reaseguro cedido moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."ICNCSRC_MONCON" IS 'Comisión del reaseguro cedido no consumida moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."IRECFRA_MONCON" IS 'Recargo por fraccionamiento moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC_PREVIO"."IRECFRANC_MONCON" IS 'Recargo por fraccionamiento no consumido moneda de la contabilidad';
  GRANT UPDATE ON "AXIS"."PPNC_PREVIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PPNC_PREVIO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PPNC_PREVIO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PPNC_PREVIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PPNC_PREVIO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PPNC_PREVIO" TO "PROGRAMADORESCSI";
