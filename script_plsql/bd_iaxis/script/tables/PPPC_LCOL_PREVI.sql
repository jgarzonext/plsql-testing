--------------------------------------------------------
--  DDL for Table PPPC_LCOL_PREVI
--------------------------------------------------------

  CREATE TABLE "AXIS"."PPPC_LCOL_PREVI" 
   (	"CEMPRES" NUMBER(2,0), 
	"FCALCUL" DATE, 
	"SPROCES" NUMBER(6,0), 
	"CRAMDGS" NUMBER(4,0), 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"SSEGURO" NUMBER(6,0), 
	"NRECIBO" NUMBER(9,0), 
	"NMOVIMI" NUMBER(4,0), 
	"FINIEFE" DATE, 
	"CGARANT" NUMBER(4,0), 
	"NRIESGO" NUMBER(6,0), 
	"IPPPC" NUMBER, 
	"IPPPC_MONCON" NUMBER, 
	"IDERREG" NUMBER, 
	"IDERREG_MONCON" NUMBER, 
	"CMONEDA" NUMBER, 
	"CERROR" NUMBER(2,0), 
	"TEDAD" VARCHAR2(200 BYTE), 
	"FCAMBIO" DATE, 
	"IPPPC_COA" NUMBER(17,2), 
	"IPPPC_MONCON_COA" NUMBER(17,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_PREVI"."CEMPRES" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_PREVI"."FCALCUL" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_PREVI"."SPROCES" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_PREVI"."CRAMDGS" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_PREVI"."CRAMO" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_PREVI"."CMODALI" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_PREVI"."CTIPSEG" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_PREVI"."CCOLECT" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_PREVI"."SSEGURO" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_PREVI"."NRECIBO" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_PREVI"."NMOVIMI" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_PREVI"."FINIEFE" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_PREVI"."CGARANT" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_PREVI"."NRIESGO" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_PREVI"."IPPPC" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_PREVI"."IPPPC_MONCON" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_PREVI"."IDERREG" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_PREVI"."IDERREG_MONCON" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_PREVI"."CMONEDA" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_PREVI"."CERROR" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_PREVI"."FCAMBIO" IS 'Fecha utilizada para el cálculo de los contravalores';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_PREVI"."IPPPC_COA" IS 'Provisión cartera coaseguro (local)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_PREVI"."IPPPC_MONCON_COA" IS 'Provisión cartera coaseguro (local) en contramoneda';
   COMMENT ON TABLE "AXIS"."PPPC_LCOL_PREVI"  IS 'tabla para el calculo de la PPPC de liberty, modo real';
  GRANT UPDATE ON "AXIS"."PPPC_LCOL_PREVI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PPPC_LCOL_PREVI" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PPPC_LCOL_PREVI" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PPPC_LCOL_PREVI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PPPC_LCOL_PREVI" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PPPC_LCOL_PREVI" TO "PROGRAMADORESCSI";
