--------------------------------------------------------
--  DDL for Table CLAUSUESP
--------------------------------------------------------

  CREATE TABLE "AXIS"."CLAUSUESP" 
   (	"NMOVIMI" NUMBER(4,0), 
	"SSEGURO" NUMBER, 
	"CCLAESP" NUMBER(1,0), 
	"NORDCLA" NUMBER(5,0), 
	"NRIESGO" NUMBER(6,0), 
	"FINICLAU" DATE, 
	"SCLAGEN" NUMBER(4,0), 
	"TCLAESP" VARCHAR2(4000 BYTE), 
	"FFINCLAU" DATE, 
	"TIMAGEN" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CLAUSUESP"."NMOVIMI" IS 'N�mero de movimiento';
   COMMENT ON COLUMN "AXIS"."CLAUSUESP"."SSEGURO" IS 'N�mero consecutivo de seguro asignado autom�ticamente.';
   COMMENT ON COLUMN "AXIS"."CLAUSUESP"."CCLAESP" IS 'Tipo de cl�usula';
   COMMENT ON COLUMN "AXIS"."CLAUSUESP"."NORDCLA" IS 'N�mero orden de la cl�usula';
   COMMENT ON COLUMN "AXIS"."CLAUSUESP"."NRIESGO" IS 'N.riesgo (no hay constraint con riesgos porque hay RIESGOS que es';
   COMMENT ON COLUMN "AXIS"."CLAUSUESP"."FINICLAU" IS 'Fecha inicio cl�usula';
   COMMENT ON COLUMN "AXIS"."CLAUSUESP"."SCLAGEN" IS 'Identificador de cl�usula';
   COMMENT ON COLUMN "AXIS"."CLAUSUESP"."TCLAESP" IS 'Texto de la cl�usula especial';
   COMMENT ON COLUMN "AXIS"."CLAUSUESP"."FFINCLAU" IS 'Fecha fin cl�usula';
   COMMENT ON TABLE "AXIS"."CLAUSUESP"  IS 'Tabla temporal de PREGUNSEG para arreglar NMOVIMI < que GARANSEG';
  GRANT UPDATE ON "AXIS"."CLAUSUESP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CLAUSUESP" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CLAUSUESP" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CLAUSUESP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CLAUSUESP" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CLAUSUESP" TO "PROGRAMADORESCSI";
