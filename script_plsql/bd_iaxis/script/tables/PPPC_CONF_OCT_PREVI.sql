--------------------------------------------------------
--  DDL for Table PPPC_CONF_OCT_PREVI
--------------------------------------------------------

  CREATE TABLE "AXIS"."PPPC_CONF_OCT_PREVI" 
   (	"CEMPRES" NUMBER(2,0), 
	"FCALCUL" DATE, 
	"SPROCES" NUMBER, 
	"CRAMDGS" NUMBER(4,0), 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"SSEGURO" NUMBER, 
	"NRECIBO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"FINIEFE" DATE, 
	"CGARANT" NUMBER(4,0), 
	"NRIESGO" NUMBER(6,0), 
	"IPPPC" NUMBER(17,2), 
	"IPPPC_MONCON" NUMBER(17,2), 
	"IDERREG" NUMBER(17,2), 
	"IDERREG_MONCON" NUMBER(17,2), 
	"CMONEDA" NUMBER, 
	"CERROR" NUMBER(2,0), 
	"TEDAD" VARCHAR2(200 BYTE), 
	"FCAMBIO" DATE, 
	"IPPPC_COA" NUMBER(17,2), 
	"IPPPC_MONCON_COA" NUMBER(17,2), 
	"IPROVMORA" NUMBER(17,2), 
	"IPROVFECINI" NUMBER(17,2), 
	"IPROVFECEXP" NUMBER(17,2), 
	"IPROVFECINI_VEINTE" NUMBER(17,2), 
	"IPROVFECEXP_VEINTE" NUMBER(17,2), 
	"IPROVFECINI_OCHENTA" NUMBER(17,2), 
	"IPROVFECEXP_OCHENTA" NUMBER(17,2), 
	"IPROVFECOCT" NUMBER(17,2), 
	"ITOTALDOC" NUMBER(17,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."CEMPRES" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."FCALCUL" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."SPROCES" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."CRAMDGS" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."CRAMO" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."CMODALI" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."CTIPSEG" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."CCOLECT" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."SSEGURO" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."NRECIBO" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."NMOVIMI" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."FINIEFE" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."CGARANT" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."NRIESGO" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."IPPPC" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."IPPPC_MONCON" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."IDERREG" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."IDERREG_MONCON" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."CMONEDA" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."CERROR" IS 'Ver comentarios en la tabla real (no previa)';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."FCAMBIO" IS 'Fecha utilizada para el c�lculo de los contravalores';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."IPPPC_COA" IS 'Provisi�n cartera coaseguro (local)';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."IPPPC_MONCON_COA" IS 'Provisi�n cartera coaseguro (local) en contramoneda';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."IPROVMORA" IS 'Importe Provisi�n Intereses de Mora';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."IPROVFECINI" IS 'Importe Provisi�n fecha inicio';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."IPROVFECEXP" IS 'Importe Provisi�n fecha inicio';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."IPROVFECINI_VEINTE" IS 'Importe Provisi�n fecha inicio veinte porciento';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."IPROVFECEXP_VEINTE" IS 'Importe Provisi�n fecha inicio veinte porciento';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."IPROVFECINI_OCHENTA" IS 'Importe Provisi�n fecha inicio ochenta porciento';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."IPROVFECEXP_OCHENTA" IS 'Importe Provisi�n fecha inicio ochenta porciento';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF_OCT_PREVI"."IPROVFECOCT" IS 'Importe Provisi�n fecha inicio octavos';
   COMMENT ON TABLE "AXIS"."PPPC_CONF_OCT_PREVI"  IS 'tabla para el calculo de la PPPC de CONFIANZA, modo previo';
  GRANT UPDATE ON "AXIS"."PPPC_CONF_OCT_PREVI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PPPC_CONF_OCT_PREVI" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PPPC_CONF_OCT_PREVI" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PPPC_CONF_OCT_PREVI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PPPC_CONF_OCT_PREVI" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PPPC_CONF_OCT_PREVI" TO "PROGRAMADORESCSI";
