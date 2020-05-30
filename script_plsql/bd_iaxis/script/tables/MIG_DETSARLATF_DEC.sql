--------------------------------------------------------
--  DDL for Table MIG_DETSARLATF_DEC
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_DETSARLATF_DEC" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"MIG_FK2" VARCHAR2(50 BYTE), 
	"CTIPOID" NUMBER, 
	"CNUMEROID" VARCHAR2(150 BYTE), 
	"TNOMBRE" VARCHAR2(150 BYTE), 
	"CMANEJAREC" NUMBER, 
	"CEJERCEPOD" NUMBER, 
	"CGOZAREC" NUMBER, 
	"CDECLARACI" NUMBER, 
	"CDECLARACICUAL" VARCHAR2(150 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_DETSARLATF_DEC"."MIG_PK" IS 'Clave �nica de MIG_DETSARLATF_DEC';
   COMMENT ON COLUMN "AXIS"."MIG_DETSARLATF_DEC"."MIG_FK" IS 'Clave externa para MIG_DATSARLAFT';
   COMMENT ON COLUMN "AXIS"."MIG_DETSARLATF_DEC"."MIG_FK2" IS 'Clave externa para MIG_PERSONAS';
   COMMENT ON COLUMN "AXIS"."MIG_DETSARLATF_DEC"."CTIPOID" IS 'Tipo de identificaci�n persona (NIF, pasaporte, etc.)';
   COMMENT ON COLUMN "AXIS"."MIG_DETSARLATF_DEC"."CNUMEROID" IS 'Documento';
   COMMENT ON COLUMN "AXIS"."MIG_DETSARLATF_DEC"."TNOMBRE" IS 'Nombre';
   COMMENT ON COLUMN "AXIS"."MIG_DETSARLATF_DEC"."CMANEJAREC" IS 'Maneja recursos p�blicos ? (V.F. 828 0= No, 1 = Si)';
   COMMENT ON COLUMN "AXIS"."MIG_DETSARLATF_DEC"."CEJERCEPOD" IS 'Ejerce alg�n grado de poder p�blico ? (V.F. 828 0= No, 1 = Si)';
   COMMENT ON COLUMN "AXIS"."MIG_DETSARLATF_DEC"."CGOZAREC" IS 'Goza de reconocimiento p�blico ? (V.F. 828 0= No, 1 = Si)';
   COMMENT ON COLUMN "AXIS"."MIG_DETSARLATF_DEC"."CDECLARACI" IS 'Declaraci�n (V.F. 828 0= No, 1 = Si)';
   COMMENT ON COLUMN "AXIS"."MIG_DETSARLATF_DEC"."CDECLARACICUAL" IS 'Cual';
  GRANT UPDATE ON "AXIS"."MIG_DETSARLATF_DEC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_DETSARLATF_DEC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_DETSARLATF_DEC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_DETSARLATF_DEC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_DETSARLATF_DEC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_DETSARLATF_DEC" TO "PROGRAMADORESCSI";