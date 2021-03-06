--------------------------------------------------------
--  DDL for Table ACTIVIPROD
--------------------------------------------------------

  CREATE TABLE "AXIS"."ACTIVIPROD" 
   (	"CMODALI" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CACTIVI" NUMBER(4,0), 
	"CRAMO" NUMBER(8,0), 
	"CACTIVO" NUMBER(1,0) DEFAULT 1, 
	"SPRODUC" NUMBER, 
	"FESTADO" DATE, 
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

   COMMENT ON COLUMN "AXIS"."ACTIVIPROD"."CMODALI" IS 'C�digo modalidad';
   COMMENT ON COLUMN "AXIS"."ACTIVIPROD"."CCOLECT" IS 'C�digo de colectividad';
   COMMENT ON COLUMN "AXIS"."ACTIVIPROD"."CTIPSEG" IS 'C�digo tipo de seguro';
   COMMENT ON COLUMN "AXIS"."ACTIVIPROD"."CACTIVI" IS 'C�digo actividad del seguro';
   COMMENT ON COLUMN "AXIS"."ACTIVIPROD"."CRAMO" IS 'C�digo ramo';
   COMMENT ON COLUMN "AXIS"."ACTIVIPROD"."CACTIVO" IS 'Actividad contratable';
   COMMENT ON COLUMN "AXIS"."ACTIVIPROD"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."ACTIVIPROD"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."ACTIVIPROD"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."ACTIVIPROD"."FMODIFI" IS 'Fecha en que se modifica el registro';
  GRANT UPDATE ON "AXIS"."ACTIVIPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ACTIVIPROD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ACTIVIPROD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ACTIVIPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ACTIVIPROD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ACTIVIPROD" TO "PROGRAMADORESCSI";
