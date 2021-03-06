--------------------------------------------------------
--  DDL for Table MIG_CTGAR_DET_BS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_CTGAR_DET_BS" 
   (	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"CPAIS" NUMBER(3,0), 
	"FEXPEDIC" DATE, 
	"CBANCO" NUMBER(4,0), 
	"SPERFIDE" VARCHAR2(50 BYTE), 
	"TSUCURSAL" VARCHAR2(100 BYTE), 
	"IINTERES" NUMBER, 
	"FVENCIMI" DATE, 
	"FVENCIMI1" DATE, 
	"FVENCIMI2" DATE, 
	"NPLAZO" NUMBER, 
	"IASEGURA" NUMBER, 
	"IINTCAP" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT DELETE ON "AXIS"."MIG_CTGAR_DET_BS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_CTGAR_DET_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CTGAR_DET_BS" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_CTGAR_DET_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CTGAR_DET_BS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_CTGAR_DET_BS" TO "PROGRAMADORESCSI";
