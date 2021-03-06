--------------------------------------------------------
--  DDL for Table MIG_ASEGURADOS_BS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_ASEGURADOS_BS" 
   (	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"MIG_FK2" VARCHAR2(50 BYTE), 
	"NORDEN" NUMBER(2,0), 
	"CDOMICI" NUMBER(2,0), 
	"FFECINI" DATE, 
	"FFECFIN" DATE, 
	"FFECMUE" DATE, 
	"FECRETROACT" DATE, 
	"SUCREA" VARCHAR2(20 BYTE), 
	"FECHAING" DATE, 
	"MODULO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT DELETE ON "AXIS"."MIG_ASEGURADOS_BS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_ASEGURADOS_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_ASEGURADOS_BS" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_ASEGURADOS_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_ASEGURADOS_BS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_ASEGURADOS_BS" TO "PROGRAMADORESCSI";
