--------------------------------------------------------
--  DDL for Table INTERESPROD
--------------------------------------------------------

  CREATE TABLE "AXIS"."INTERESPROD" 
   (	"CRAMO" NUMBER(8,0), 
	"CCOLECT" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CMODALI" NUMBER(2,0), 
	"FINIVIG" DATE, 
	"FFINVIG" DATE, 
	"PINTTOT" NUMBER(6,3), 
	"PINTEMP" NUMBER(6,3), 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INTERESPROD"."CRAMO" IS 'C�digo ramo';
   COMMENT ON COLUMN "AXIS"."INTERESPROD"."CCOLECT" IS 'C�digo de colectividad';
   COMMENT ON COLUMN "AXIS"."INTERESPROD"."CTIPSEG" IS 'C�digo tipo de seguro';
   COMMENT ON COLUMN "AXIS"."INTERESPROD"."CMODALI" IS 'C�digo modalidad';
   COMMENT ON COLUMN "AXIS"."INTERESPROD"."FINIVIG" IS 'Fecha inicio';
   COMMENT ON COLUMN "AXIS"."INTERESPROD"."FFINVIG" IS 'Fecha fin';
   COMMENT ON COLUMN "AXIS"."INTERESPROD"."PINTTOT" IS 'Porcentaje  de inter�s total';
   COMMENT ON COLUMN "AXIS"."INTERESPROD"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."INTERESPROD"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."INTERESPROD"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."INTERESPROD"."FMODIFI" IS 'Fecha en que se modifica el registro';
  GRANT UPDATE ON "AXIS"."INTERESPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INTERESPROD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INTERESPROD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INTERESPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INTERESPROD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INTERESPROD" TO "PROGRAMADORESCSI";