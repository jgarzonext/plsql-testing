--------------------------------------------------------
--  DDL for Table COPY_MIG_CTACOASEGURO
--------------------------------------------------------

  CREATE TABLE "AXIS"."COPY_MIG_CTACOASEGURO" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"SMOVCOA" NUMBER(8,0), 
	"MIG_FK2" VARCHAR2(50 BYTE), 
	"CIMPORT" NUMBER(2,0), 
	"CTIPCOA" NUMBER(2,0), 
	"CMOVIMI" NUMBER(2,0), 
	"IMOVIMI" NUMBER, 
	"FMOVIMI" DATE, 
	"FCONTAB" DATE, 
	"CDEBHAB" NUMBER(1,0), 
	"FLIQCIA" DATE, 
	"PCESCOA" NUMBER(5,2), 
	"SIDEPAG" NUMBER(8,0), 
	"NRECIBO" NUMBER, 
	"SMOVREC" NUMBER, 
	"CEMPRES" NUMBER(2,0), 
	"SSEGURO" NUMBER, 
	"SPRODUC" NUMBER(6,0), 
	"CESTADO" NUMBER(2,0), 
	"CTIPMOV" NUMBER(1,0), 
	"TDESCRI" VARCHAR2(2000 BYTE), 
	"TDOCUME" VARCHAR2(2000 BYTE), 
	"IMOVIMI_MONCON" NUMBER, 
	"FCAMBIO" DATE, 
	"NSINIES" VARCHAR2(14 BYTE), 
	"CCOMPAPR" NUMBER(3,0), 
	"CMONEDA" NUMBER(3,0), 
	"SPAGCOA" NUMBER(10,0), 
	"CTIPGAS" NUMBER(3,0), 
	"FCIERRE" DATE, 
	"NTRAMIT" NUMBER(3,0), 
	"NMOVRES" NUMBER(4,0), 
	"CGARANT" NUMBER(4,0), 
	"MIG_FK3" VARCHAR2(50 BYTE), 
	"MIG_FK4" VARCHAR2(50 BYTE), 
	"MIG_FK5" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT DELETE ON "AXIS"."COPY_MIG_CTACOASEGURO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."COPY_MIG_CTACOASEGURO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COPY_MIG_CTACOASEGURO" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."COPY_MIG_CTACOASEGURO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COPY_MIG_CTACOASEGURO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."COPY_MIG_CTACOASEGURO" TO "PROGRAMADORESCSI";
