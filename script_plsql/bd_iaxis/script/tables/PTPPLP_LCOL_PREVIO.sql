--------------------------------------------------------
--  DDL for Table PTPPLP_LCOL_PREVIO
--------------------------------------------------------

  CREATE TABLE "AXIS"."PTPPLP_LCOL_PREVIO" 
   (	"CEMPRES" NUMBER(2,0), 
	"FCALCUL" DATE, 
	"SPROCES" NUMBER(6,0), 
	"CRAMDGS" NUMBER(4,0), 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"SSEGURO" NUMBER(6,0), 
	"NSINIES" NUMBER(8,0), 
	"IPPLPSD" NUMBER, 
	"IPPLPRC" NUMBER, 
	"CERROR" NUMBER(2,0), 
	"IVALBRUTO" NUMBER, 
	"IVALPAGO" NUMBER, 
	"CMONEDA" NUMBER, 
	"ITASA" NUMBER, 
	"CGARANT" NUMBER(4,0), 
	"CCAUSINI" NUMBER, 
	"CESTPAG" VARCHAR2(75 BYTE), 
	"IPPLPSD_MONCON" NUMBER, 
	"IPPLPRC_MONCON" NUMBER, 
	"IVALBRUTO_MONCON" NUMBER, 
	"IVALPAGO_MONCON" NUMBER, 
	"FCAMBIO" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PTPPLP_LCOL_PREVIO"."CEMPRES" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PTPPLP_LCOL_PREVIO"."FCALCUL" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PTPPLP_LCOL_PREVIO"."SPROCES" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PTPPLP_LCOL_PREVIO"."CRAMDGS" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PTPPLP_LCOL_PREVIO"."CRAMO" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PTPPLP_LCOL_PREVIO"."CMODALI" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PTPPLP_LCOL_PREVIO"."CTIPSEG" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PTPPLP_LCOL_PREVIO"."CCOLECT" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PTPPLP_LCOL_PREVIO"."SSEGURO" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PTPPLP_LCOL_PREVIO"."NSINIES" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PTPPLP_LCOL_PREVIO"."IPPLPSD" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PTPPLP_LCOL_PREVIO"."IPPLPRC" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PTPPLP_LCOL_PREVIO"."CERROR" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PTPPLP_LCOL_PREVIO"."IVALBRUTO" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PTPPLP_LCOL_PREVIO"."IVALPAGO" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PTPPLP_LCOL_PREVIO"."CMONEDA" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PTPPLP_LCOL_PREVIO"."ITASA" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PTPPLP_LCOL_PREVIO"."CGARANT" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PTPPLP_LCOL_PREVIO"."CCAUSINI" IS 'Fecha de inicio del periodo del provisionamiento';
   COMMENT ON COLUMN "AXIS"."PTPPLP_LCOL_PREVIO"."CESTPAG" IS 'Estado del pago del siniestro';
   COMMENT ON COLUMN "AXIS"."PTPPLP_LCOL_PREVIO"."IPPLPSD_MONCON" IS 'IPPLPSD en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PTPPLP_LCOL_PREVIO"."IPPLPRC_MONCON" IS 'IPPLPRC en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PTPPLP_LCOL_PREVIO"."IVALBRUTO_MONCON" IS 'IVALBRUTO en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PTPPLP_LCOL_PREVIO"."IVALPAGO_MONCON" IS 'IVALPAGO en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PTPPLP_LCOL_PREVIO"."FCAMBIO" IS 'Fecha de cambio empleada para el cálculo de los contravalores';
   COMMENT ON TABLE "AXIS"."PTPPLP_LCOL_PREVIO"  IS 'tabla para el calculo de la PTPPPLP de liberty, modo previo';
  GRANT UPDATE ON "AXIS"."PTPPLP_LCOL_PREVIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PTPPLP_LCOL_PREVIO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PTPPLP_LCOL_PREVIO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PTPPLP_LCOL_PREVIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PTPPLP_LCOL_PREVIO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PTPPLP_LCOL_PREVIO" TO "PROGRAMADORESCSI";
