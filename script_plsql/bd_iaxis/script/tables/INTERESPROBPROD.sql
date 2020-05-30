--------------------------------------------------------
--  DDL for Table INTERESPROBPROD
--------------------------------------------------------

  CREATE TABLE "AXIS"."INTERESPROBPROD" 
   (	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"FINIVIG" DATE, 
	"FFINVIG" DATE, 
	"PINTPROB" NUMBER(5,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INTERESPROBPROD"."CRAMO" IS 'C�digo ramo';
   COMMENT ON COLUMN "AXIS"."INTERESPROBPROD"."CMODALI" IS 'C�digo modalidad';
   COMMENT ON COLUMN "AXIS"."INTERESPROBPROD"."CCOLECT" IS 'C�digo de colectividad';
   COMMENT ON COLUMN "AXIS"."INTERESPROBPROD"."CTIPSEG" IS 'C�digo tipo de seguro';
   COMMENT ON COLUMN "AXIS"."INTERESPROBPROD"."FINIVIG" IS 'Fecha inicio';
   COMMENT ON COLUMN "AXIS"."INTERESPROBPROD"."FFINVIG" IS 'Fecha fin';
   COMMENT ON COLUMN "AXIS"."INTERESPROBPROD"."PINTPROB" IS 'Porcentaje  de inter�s probable';
  GRANT UPDATE ON "AXIS"."INTERESPROBPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INTERESPROBPROD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INTERESPROBPROD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INTERESPROBPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INTERESPROBPROD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INTERESPROBPROD" TO "PROGRAMADORESCSI";
