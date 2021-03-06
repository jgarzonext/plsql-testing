--------------------------------------------------------
--  DDL for Table TMP_ALM
--------------------------------------------------------

  CREATE TABLE "AXIS"."TMP_ALM" 
   (	"SSEGURO" NUMBER, 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER, 
	"CTIPSEG" NUMBER, 
	"CCOLECT" NUMBER, 
	"MES" NUMBER, 
	"ANYS" NUMBER, 
	"FVENCIM" DATE, 
	"FEFEC" DATE, 
	"IPM" NUMBER, 
	"PIPM" NUMBER, 
	"IRESCATSTOTAL" NUMBER, 
	"ISINISTRESTOTAL" NUMBER, 
	"IPRIMESTOTAL" NUMBER, 
	"IPM_PRODUCTE" NUMBER, 
	"IRESCATS" NUMBER, 
	"ISINISTRES" NUMBER, 
	"IPRIMES" NUMBER, 
	"POS" NUMBER, 
	"PIT" NUMBER, 
	"PITAPLICAT" NUMBER, 
	"SPRODUC" NUMBER, 
	"ICARTERA" NUMBER DEFAULT 0, 
	"IPRIMARISC" NUMBER DEFAULT 0, 
	"IPRIMA_MENSUAL" NUMBER DEFAULT 0, 
	"IREVAL" NUMBER, 
	"PREVAL" NUMBER, 
	"ISOBREPRIMA" NUMBER DEFAULT 0, 
	"ISOBRECARTERA" NUMBER DEFAULT 0, 
	"FANULAC" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."TMP_ALM"."IPRIMARISC" IS 'Import de la Prima de Risc';
   COMMENT ON COLUMN "AXIS"."TMP_ALM"."IPRIMA_MENSUAL" IS 'Import de la prima Mensual de la p�lissa del mes corresponent';
   COMMENT ON COLUMN "AXIS"."TMP_ALM"."IREVAL" IS 'Import de la revaloritzacio';
   COMMENT ON COLUMN "AXIS"."TMP_ALM"."PREVAL" IS 'Percentatge de la revaloritzaci�';
  GRANT UPDATE ON "AXIS"."TMP_ALM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_ALM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TMP_ALM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TMP_ALM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_ALM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TMP_ALM" TO "PROGRAMADORESCSI";
