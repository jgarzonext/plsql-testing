--------------------------------------------------------
--  DDL for Table HIS_CUMULPROD
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_CUMULPROD" 
   (	"CCUMPROD" NUMBER(22,0), 
	"FINIEFE" DATE, 
	"SPRODUC" NUMBER(22,0), 
	"FFINEFE" DATE, 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE, 
	"CUSUHIST" VARCHAR2(20 BYTE), 
	"FCREAHIST" DATE, 
	"ACCION" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_CUMULPROD"."CCUMPROD" IS 'Codi de c�mul per producte';
   COMMENT ON COLUMN "AXIS"."HIS_CUMULPROD"."FINIEFE" IS 'Data de fi d''efecte ';
   COMMENT ON COLUMN "AXIS"."HIS_CUMULPROD"."SPRODUC" IS 'Codi de producte';
   COMMENT ON COLUMN "AXIS"."HIS_CUMULPROD"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_CUMULPROD"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_CUMULPROD"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_CUMULPROD"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON COLUMN "AXIS"."HIS_CUMULPROD"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_CUMULPROD"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_CUMULPROD"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_CUMULPROD"  IS 'Hist�rico de la tabla CUMULPROD';
  GRANT UPDATE ON "AXIS"."HIS_CUMULPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_CUMULPROD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_CUMULPROD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_CUMULPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_CUMULPROD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_CUMULPROD" TO "PROGRAMADORESCSI";
