--------------------------------------------------------
--  DDL for Table MIG_AGE_CORRETAJE_BS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_AGE_CORRETAJE_BS" 
   (	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"NORDAGE" NUMBER(2,0), 
	"CAGENTE" NUMBER, 
	"PCOMISI" NUMBER(5,2), 
	"PPARTICI" NUMBER(5,2), 
	"ISLIDER" NUMBER(1,0), 
	"SUCREA" VARCHAR2(12 BYTE), 
	"FECHAING" DATE, 
	"MODULO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT DELETE ON "AXIS"."MIG_AGE_CORRETAJE_BS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_AGE_CORRETAJE_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_AGE_CORRETAJE_BS" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_AGE_CORRETAJE_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_AGE_CORRETAJE_BS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_AGE_CORRETAJE_BS" TO "PROGRAMADORESCSI";
