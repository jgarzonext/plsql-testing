--------------------------------------------------------
--  DDL for Table MIG_CTACTES_BS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_CTACTES_BS" 
   (	"MIG_PK" VARCHAR2(50 BYTE), 
	"CAGENTE" NUMBER, 
	"NNUMLIN" NUMBER(6,0), 
	"CDEBHAB" NUMBER, 
	"CCONCTA" NUMBER(2,0), 
	"CESTADO" NUMBER(1,0), 
	"NDOCUME" VARCHAR2(10 BYTE), 
	"FFECMOV" DATE, 
	"IIMPORT" NUMBER, 
	"TDESCRIP" VARCHAR2(100 BYTE), 
	"CMANUAL" NUMBER(1,0), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"MIG_FK2" VARCHAR2(50 BYTE), 
	"MIG_FK3" VARCHAR2(50 BYTE), 
	"FVALOR" DATE, 
	"CFISCAL" NUMBER(1,0), 
	"SPRODUC" NUMBER(8,0), 
	"CCOMPANI" NUMBER(2,0), 
	"CTIPOLIQ" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT DELETE ON "AXIS"."MIG_CTACTES_BS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_CTACTES_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CTACTES_BS" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_CTACTES_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CTACTES_BS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_CTACTES_BS" TO "PROGRAMADORESCSI";
