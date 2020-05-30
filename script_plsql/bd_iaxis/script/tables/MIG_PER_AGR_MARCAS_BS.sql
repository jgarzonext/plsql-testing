--------------------------------------------------------
--  DDL for Table MIG_PER_AGR_MARCAS_BS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_PER_AGR_MARCAS_BS" 
   (	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"CMARCA" VARCHAR2(10 BYTE), 
	"NMOVIMI" NUMBER(*,0), 
	"CTIPO" NUMBER(1,0), 
	"CTOMADOR" NUMBER(1,0), 
	"CCONSORCIO" NUMBER(1,0), 
	"CASEGURADO" NUMBER(1,0), 
	"CCODEUDOR" NUMBER(1,0), 
	"CBENEF" NUMBER(1,0), 
	"CACCIONISTA" NUMBER(1,0), 
	"CINTERMED" NUMBER(1,0), 
	"CREPRESEN" NUMBER(1,0), 
	"CAPODERADO" NUMBER(1,0), 
	"CPAGADOR" NUMBER(1,0), 
	"TOBSEVA" VARCHAR2(2000 BYTE), 
	"CUSER" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CPROVEEDOR" NUMBER(1,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT DELETE ON "AXIS"."MIG_PER_AGR_MARCAS_BS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_PER_AGR_MARCAS_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_PER_AGR_MARCAS_BS" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_PER_AGR_MARCAS_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_PER_AGR_MARCAS_BS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_PER_AGR_MARCAS_BS" TO "PROGRAMADORESCSI";