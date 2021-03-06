--------------------------------------------------------
--  DDL for Table MIG_SIN_PROF_SEDE
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_SIN_PROF_SEDE" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"PROCESO" NUMBER, 
	"SPROFES" NUMBER(8,0), 
	"IDPERSON" NUMBER(10,0), 
	"CTIPIDE" NUMBER(3,0), 
	"NNUMIDE" VARCHAR2(50 BYTE), 
	"TDIGITOIDE" VARCHAR2(1 BYTE), 
	"THORARI" VARCHAR2(500 BYTE), 
	"TPERCTO" VARCHAR2(1000 BYTE), 
	"FBAJA" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_SIN_PROF_SEDE"."PROCESO" IS 'Id. Proceso que ha cargado';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_PROF_SEDE"."SPROFES" IS 'Codigo de profesional';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_PROF_SEDE"."IDPERSON" IS 'Identificador unico personas';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_PROF_SEDE"."CTIPIDE" IS 'Codigo tipo identificador (VF:672)';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_PROF_SEDE"."NNUMIDE" IS 'Nimero de identificacion';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_PROF_SEDE"."TDIGITOIDE" IS 'Digito verificacion';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_PROF_SEDE"."THORARI" IS 'Horario de atencion al publico';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_PROF_SEDE"."TPERCTO" IS 'Contacto';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_PROF_SEDE"."FBAJA" IS 'Fecha de baja';
  GRANT UPDATE ON "AXIS"."MIG_SIN_PROF_SEDE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_SIN_PROF_SEDE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_SIN_PROF_SEDE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_SIN_PROF_SEDE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_SIN_PROF_SEDE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_SIN_PROF_SEDE" TO "PROGRAMADORESCSI";
