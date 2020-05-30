--------------------------------------------------------
--  DDL for Table PPPC_LCOL_MATRIZ_PREVI
--------------------------------------------------------

  CREATE TABLE "AXIS"."PPPC_LCOL_MATRIZ_PREVI" 
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
	"IPPPMAT" NUMBER, 
	"IPPPMAT_MONCON" NUMBER, 
	"IDERREG" NUMBER, 
	"IDERREG_MONCON" NUMBER, 
	"CMONEDA" NUMBER, 
	"CERROR" NUMBER(2,0), 
	"TEDAD" VARCHAR2(200 BYTE), 
	"FCAMBIO" DATE, 
	"IPPPMAT_COA" NUMBER(17,2), 
	"IPPPMAT_MONCON_COA" NUMBER(17,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_MATRIZ_PREVI"."CEMPRES" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_MATRIZ_PREVI"."FCALCUL" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_MATRIZ_PREVI"."SPROCES" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_MATRIZ_PREVI"."CRAMDGS" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_MATRIZ_PREVI"."CRAMO" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_MATRIZ_PREVI"."CMODALI" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_MATRIZ_PREVI"."CTIPSEG" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_MATRIZ_PREVI"."CCOLECT" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_MATRIZ_PREVI"."SSEGURO" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_MATRIZ_PREVI"."NRECIBO" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_MATRIZ_PREVI"."NMOVIMI" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_MATRIZ_PREVI"."FINIEFE" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_MATRIZ_PREVI"."CGARANT" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_MATRIZ_PREVI"."NRIESGO" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_MATRIZ_PREVI"."IPPPMAT" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_MATRIZ_PREVI"."IPPPMAT_MONCON" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_MATRIZ_PREVI"."IDERREG" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_MATRIZ_PREVI"."IDERREG_MONCON" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_MATRIZ_PREVI"."CMONEDA" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_MATRIZ_PREVI"."CERROR" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_MATRIZ_PREVI"."FCAMBIO" IS 'Fecha utilizada para el cálculo de los contravalores';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_MATRIZ_PREVI"."IPPPMAT_COA" IS 'Provisión matriz coaseguro';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL_MATRIZ_PREVI"."IPPPMAT_MONCON_COA" IS 'Provisión matriz coaseguro, en contramoneda';
   COMMENT ON TABLE "AXIS"."PPPC_LCOL_MATRIZ_PREVI"  IS 'tabla para el calculo de la PPPC de liberty, modo real';
  GRANT UPDATE ON "AXIS"."PPPC_LCOL_MATRIZ_PREVI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PPPC_LCOL_MATRIZ_PREVI" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PPPC_LCOL_MATRIZ_PREVI" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PPPC_LCOL_MATRIZ_PREVI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PPPC_LCOL_MATRIZ_PREVI" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PPPC_LCOL_MATRIZ_PREVI" TO "PROGRAMADORESCSI";
