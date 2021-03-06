--------------------------------------------------------
--  DDL for Table CUMULPROD
--------------------------------------------------------

  CREATE TABLE "AXIS"."CUMULPROD" 
   (	"CCUMPROD" NUMBER(6,0), 
	"FINIEFE" DATE, 
	"SPRODUC" NUMBER(6,0), 
	"FFINEFE" DATE, 
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

   COMMENT ON COLUMN "AXIS"."CUMULPROD"."CCUMPROD" IS 'Codi de c�mul per producte';
   COMMENT ON COLUMN "AXIS"."CUMULPROD"."FINIEFE" IS 'Data de fi d''efecte ';
   COMMENT ON COLUMN "AXIS"."CUMULPROD"."SPRODUC" IS 'Codi de producte';
   COMMENT ON COLUMN "AXIS"."CUMULPROD"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."CUMULPROD"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."CUMULPROD"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."CUMULPROD"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON TABLE "AXIS"."CUMULPROD"  IS 'Productes que fan c�mul entre ells';
  GRANT UPDATE ON "AXIS"."CUMULPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CUMULPROD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CUMULPROD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CUMULPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CUMULPROD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CUMULPROD" TO "PROGRAMADORESCSI";
