--------------------------------------------------------
--  DDL for Table MIG_CLAUSUESP
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_CLAUSUESP" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"NMOVIMI" NUMBER(4,0), 
	"SSEGURO" NUMBER, 
	"CCLAESP" NUMBER(1,0), 
	"NORDCLA" NUMBER(5,0), 
	"NRIESGO" NUMBER(6,0), 
	"FINICLAU" DATE, 
	"SCLAGEN" NUMBER(4,0), 
	"TCLAESP" VARCHAR2(4000 BYTE), 
	"FFINCLAU" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_CLAUSUESP"."NCARGA" IS 'N�mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_CLAUSUESP"."CESTMIG" IS 'Estado del registro';
   COMMENT ON COLUMN "AXIS"."MIG_CLAUSUESP"."MIG_PK" IS 'Clave �nica de MIG_CLAUSULAS';
   COMMENT ON COLUMN "AXIS"."MIG_CLAUSUESP"."MIG_FK" IS 'Clave externa para el seguro (MIG_SEGUROS)';
   COMMENT ON COLUMN "AXIS"."MIG_CLAUSUESP"."NMOVIMI" IS 'N�mero de movimiento';
   COMMENT ON COLUMN "AXIS"."MIG_CLAUSUESP"."SSEGURO" IS 'N�mero consecutivo de seguro asignado autom�ticamente.';
   COMMENT ON COLUMN "AXIS"."MIG_CLAUSUESP"."CCLAESP" IS 'Tipo de cl�usula';
   COMMENT ON COLUMN "AXIS"."MIG_CLAUSUESP"."NORDCLA" IS 'N�mero orden de la cl�usula';
   COMMENT ON COLUMN "AXIS"."MIG_CLAUSUESP"."NRIESGO" IS 'N�mero riesgo';
   COMMENT ON COLUMN "AXIS"."MIG_CLAUSUESP"."FINICLAU" IS 'Fecha inicio cl�usula';
   COMMENT ON COLUMN "AXIS"."MIG_CLAUSUESP"."SCLAGEN" IS 'Identificador de cl�usula';
   COMMENT ON COLUMN "AXIS"."MIG_CLAUSUESP"."TCLAESP" IS 'Texto de la cl�usula especial';
   COMMENT ON COLUMN "AXIS"."MIG_CLAUSUESP"."FFINCLAU" IS 'Fecha fin cl�usula';
   COMMENT ON TABLE "AXIS"."MIG_CLAUSUESP"  IS 'Tabla Intermedia migraci�n Clausulas';
  GRANT UPDATE ON "AXIS"."MIG_CLAUSUESP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CLAUSUESP" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_CLAUSUESP" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_CLAUSUESP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CLAUSUESP" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_CLAUSUESP" TO "PROGRAMADORESCSI";
