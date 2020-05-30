--------------------------------------------------------
--  DDL for Table COPY_MIG_SIN_TRAMITA_CITAC
--------------------------------------------------------

  CREATE TABLE "AXIS"."COPY_MIG_SIN_TRAMITA_CITAC" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(14 BYTE), 
	"MIG_FK" VARCHAR2(14 BYTE), 
	"NSINIES" NUMBER, 
	"NTRAMIT" NUMBER, 
	"NCITACION" NUMBER, 
	"FCITACION" DATE, 
	"HCITACION" VARCHAR2(5 BYTE), 
	"SPERSON" NUMBER, 
	"CPAIS" NUMBER(3,0), 
	"CPROVIN" NUMBER, 
	"CPOBLAC" NUMBER, 
	"TLUGAR" VARCHAR2(200 BYTE), 
	"FALTA" DATE, 
	"TAUDIEN" VARCHAR2(2000 BYTE), 
	"CORAL" NUMBER(1,0), 
	"CESTADO" NUMBER(1,0), 
	"CRESOLU" NUMBER(1,0), 
	"FNUEVA" DATE, 
	"TRESULT" VARCHAR2(2000 BYTE), 
	"CMEDIO" NUMBER(1,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT DELETE ON "AXIS"."COPY_MIG_SIN_TRAMITA_CITAC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."COPY_MIG_SIN_TRAMITA_CITAC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COPY_MIG_SIN_TRAMITA_CITAC" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."COPY_MIG_SIN_TRAMITA_CITAC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COPY_MIG_SIN_TRAMITA_CITAC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."COPY_MIG_SIN_TRAMITA_CITAC" TO "PROGRAMADORESCSI";
