--------------------------------------------------------
--  DDL for Table MIG_BENESPSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_BENESPSEG" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"MIG_FK2" VARCHAR2(50 BYTE), 
	"NBENEFIC" NUMBER(3,0), 
	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"CGARANT" NUMBER(4,0), 
	"NMOVIMI" NUMBER(4,0), 
	"SPERSON" NUMBER(10,0), 
	"CTIPIDE_CONT" NUMBER(3,0), 
	"NNUMIDE_CONT" VARCHAR2(50 BYTE), 
	"TAPELLI1_CONT" VARCHAR2(60 BYTE), 
	"TAPELLI2_CONT" VARCHAR2(60 BYTE), 
	"TNOMBRE1_CONT" VARCHAR2(60 BYTE), 
	"TNOMBRE2_CONT" VARCHAR2(60 BYTE), 
	"FINIBEN" DATE, 
	"FFINBEN" DATE, 
	"CTIPBEN" NUMBER(2,0), 
	"CPAREN" NUMBER(2,0), 
	"PPARTICIP" NUMBER(5,2), 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FMOVIMI" DATE, 
	"CESTADO" NUMBER(2,0), 
	"CTIPOCON" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."NCARGA" IS 'Número de carga';
   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."CESTMIG" IS 'Estado del registro';
   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."MIG_PK" IS 'Clave única de MIG_CLAUSULAS';
   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."MIG_FK" IS 'Clave externa FK(MIG_MOVSEGURO)';
   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."MIG_FK2" IS 'Clave externa FK(MIG_PERSONAS)';
   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."NBENEFIC" IS 'Número beneficario';
   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."SSEGURO" IS 'Número consecutivo de seguro asignado automáticamente.';
   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."NRIESGO" IS 'Número de riesgo';
   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."CGARANT" IS 'Código de garantía';
   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."NMOVIMI" IS 'Número de movimiento';
   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."SPERSON" IS 'Código de persona beneficiario';
   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."CTIPIDE_CONT" IS 'Tipo identificador del beneficiario al que se releaciona el beneficiario contigente';
   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."NNUMIDE_CONT" IS 'Número documento del beneficiario al que se releaciona el beneficiario contigente';
   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."TAPELLI1_CONT" IS 'Primer apellido del beneficiario al que se releaciona el beneficiario contigente';
   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."TAPELLI2_CONT" IS 'Segundo apellido del beneficiario al que se releaciona el beneficiario contigente';
   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."TNOMBRE1_CONT" IS 'Primer nombre del beneficiario al que se releaciona el beneficiario contigente';
   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."TNOMBRE2_CONT" IS 'Segundo nombre del beneficiario al que se releaciona el beneficiario contigente';
   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."FINIBEN" IS 'Fecha inicio beneficiario';
   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."FFINBEN" IS 'Fecha fin beneficiario';
   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."CTIPBEN" IS 'Código de tipo de beneficiario. Vf.:1053';
   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."CPAREN" IS 'Código de parentesco del beneficiario. Vf.: 1054';
   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."PPARTICIP" IS 'Porcentaje de participación';
   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."CUSUARI" IS 'Código usuario modificación registro';
   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."FMOVIMI" IS 'Fecha modificación registro';
   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."CESTADO" IS 'Código estado del beneficiario (V.F: 800128)';
   COMMENT ON COLUMN "AXIS"."MIG_BENESPSEG"."CTIPOCON" IS 'Tipo de contingencia en la que se afecta el beneficiario (VF 8001024)';
   COMMENT ON TABLE "AXIS"."MIG_BENESPSEG"  IS 'Tabla Intermedia migración de beneficiarios especiales de la póliza';
  GRANT UPDATE ON "AXIS"."MIG_BENESPSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_BENESPSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_BENESPSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_BENESPSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_BENESPSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_BENESPSEG" TO "PROGRAMADORESCSI";
