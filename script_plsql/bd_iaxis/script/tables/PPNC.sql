--------------------------------------------------------
--  DDL for Table PPNC
--------------------------------------------------------

  CREATE TABLE "AXIS"."PPNC" 
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
	"IRECFRA" NUMBER, 
	"PRECARG" NUMBER DEFAULT 0, 
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

   COMMENT ON COLUMN "AXIS"."PPNC"."ICOMAGE" IS 'Comisión del agente';
   COMMENT ON COLUMN "AXIS"."PPNC"."ICOMNCS" IS 'Comisión del agente no consumida';
   COMMENT ON COLUMN "AXIS"."PPNC"."SPRODUC" IS 'Código de producto';
   COMMENT ON COLUMN "AXIS"."PPNC"."ICOMRC" IS 'Comisión del reaseguro cedido';
   COMMENT ON COLUMN "AXIS"."PPNC"."ICNCSRC" IS 'Comisión del reaseguro cedido no consumida';
   COMMENT ON COLUMN "AXIS"."PPNC"."IRECFRA" IS 'Recargo por fraccionamiento';
   COMMENT ON COLUMN "AXIS"."PPNC"."PRECARG" IS 'Porcentaje de recargo por fraccionamiento';
   COMMENT ON COLUMN "AXIS"."PPNC"."IRECFRANC" IS 'ecargo por fraccionamiento no consumido';
   COMMENT ON COLUMN "AXIS"."PPNC"."CMONEDA" IS 'Moneda de la poliza tratada';
   COMMENT ON COLUMN "AXIS"."PPNC"."FCAMBIO" IS 'Fecha utilizada para el cálculo de los contravalores';
   COMMENT ON COLUMN "AXIS"."PPNC"."ITASA" IS 'valor de la tasa de contravalor de multimoneda';
   COMMENT ON COLUMN "AXIS"."PPNC"."IPRIDEV_MONCON" IS 'Prima total del periodo moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC"."IPRINCS_MONCON" IS 'Prima no consumida en el periodo moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC"."IPDEVRC_MONCON" IS 'Prima total de reaseguro del periodo moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC"."IPNCSRC_MONCON" IS 'Prima no consumida de reaseguro del periodo moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC"."ICOMAGE_MONCON" IS 'Comisión del agente moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC"."ICOMNCS_MONCON" IS 'Comisión del agente no consumida moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC"."ICOMRC_MONCON" IS 'Comisión del reaseguro cedido moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC"."ICNCSRC_MONCON" IS 'Comisión del reaseguro cedido no consumida moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC"."IRECFRA_MONCON" IS 'Recargo por fraccionamiento moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PPNC"."IRECFRANC_MONCON" IS 'Recargo por fraccionamiento no consumido moneda de la contabilidad';
  GRANT UPDATE ON "AXIS"."PPNC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PPNC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PPNC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PPNC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PPNC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PPNC" TO "PROGRAMADORESCSI";
