--------------------------------------------------------
--  DDL for Table COPY_MIG_FIN_ENDEUDAMIENTO
--------------------------------------------------------

  CREATE TABLE "AXIS"."COPY_MIG_FIN_ENDEUDAMIENTO" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"SFINANCI" NUMBER, 
	"FCONSULTA" DATE, 
	"CFUENTE" NUMBER, 
	"IMINIMO" NUMBER, 
	"ICAPPAG" NUMBER, 
	"ICAPEND" NUMBER, 
	"IENDTOT" NUMBER, 
	"NCALIFA" NUMBER, 
	"NCALIFB" NUMBER, 
	"NCALIFC" NUMBER, 
	"NCALIFD" NUMBER, 
	"NCALIFE" NUMBER, 
	"NCONSUL" NUMBER, 
	"NSCORE" NUMBER, 
	"NMORA" NUMBER, 
	"ICUPOG" NUMBER, 
	"ICUPOS" NUMBER, 
	"FCUPO" DATE, 
	"TCUPOR" VARCHAR2(2000 BYTE), 
	"CRESTRIC" NUMBER, 
	"TCONCEPC" VARCHAR2(2000 BYTE), 
	"TCONCEPS" VARCHAR2(2000 BYTE), 
	"TCBUREA" VARCHAR2(2000 BYTE), 
	"TCOTROS" VARCHAR2(2000 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT DELETE ON "AXIS"."COPY_MIG_FIN_ENDEUDAMIENTO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."COPY_MIG_FIN_ENDEUDAMIENTO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COPY_MIG_FIN_ENDEUDAMIENTO" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."COPY_MIG_FIN_ENDEUDAMIENTO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COPY_MIG_FIN_ENDEUDAMIENTO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."COPY_MIG_FIN_ENDEUDAMIENTO" TO "PROGRAMADORESCSI";
