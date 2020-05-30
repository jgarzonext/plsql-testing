--------------------------------------------------------
--  DDL for Table MIG_SIN_TRAMITA_FISCAL_BS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_SIN_TRAMITA_FISCAL_BS" 
   (	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"MIG_FK2" VARCHAR2(50 BYTE), 
	"NORDEN" NUMBER, 
	"FAPERTU" DATE, 
	"FIMPUTA" DATE, 
	"FNOTIFI" DATE, 
	"FAUDIEN" DATE, 
	"HAUDIEN" DATE, 
	"CAUDIEN" NUMBER, 
	"SPROFES" NUMBER, 
	"COTERRI" NUMBER, 
	"CCONTRA" NUMBER, 
	"CUESPEC" NUMBER, 
	"TCONTRA" VARCHAR2(2000 BYTE), 
	"CTIPTRA" NUMBER(8,0), 
	"TESTADO" VARCHAR2(2000 BYTE), 
	"CMEDIO" NUMBER, 
	"FDESCAR" DATE, 
	"FFALLO" DATE, 
	"CFALLO" VARCHAR2(2000 BYTE), 
	"TFALLO" VARCHAR2(2000 BYTE), 
	"CRECURSO" NUMBER, 
	"FMODIFI" DATE, 
	"CUSUALT" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT DELETE ON "AXIS"."MIG_SIN_TRAMITA_FISCAL_BS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_SIN_TRAMITA_FISCAL_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_SIN_TRAMITA_FISCAL_BS" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_SIN_TRAMITA_FISCAL_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_SIN_TRAMITA_FISCAL_BS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_SIN_TRAMITA_FISCAL_BS" TO "PROGRAMADORESCSI";
