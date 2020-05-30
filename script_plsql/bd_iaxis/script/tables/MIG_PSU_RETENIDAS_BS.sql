--------------------------------------------------------
--  DDL for Table MIG_PSU_RETENIDAS_BS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_PSU_RETENIDAS_BS" 
   (	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"SSEGURO" NUMBER, 
	"FMOVIMI" DATE, 
	"CMOTRET" NUMBER(4,0), 
	"CUSURET" VARCHAR2(20 BYTE), 
	"FFECRET" DATE, 
	"CUSUAUT" VARCHAR2(20 BYTE), 
	"FFECAUT" DATE, 
	"OBSERV" VARCHAR2(4000 BYTE), 
	"CDETMOTREC" NUMBER(6,0), 
	"POSTPPER" VARCHAR2(100 BYTE), 
	"PERPOST" NUMBER, 
	"SUCREA" VARCHAR2(12 BYTE), 
	"FECHAING" DATE, 
	"MODULO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT DELETE ON "AXIS"."MIG_PSU_RETENIDAS_BS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_PSU_RETENIDAS_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_PSU_RETENIDAS_BS" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_PSU_RETENIDAS_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_PSU_RETENIDAS_BS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_PSU_RETENIDAS_BS" TO "PROGRAMADORESCSI";
