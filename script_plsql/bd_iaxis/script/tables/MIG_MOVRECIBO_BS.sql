--------------------------------------------------------
--  DDL for Table MIG_MOVRECIBO_BS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_MOVRECIBO_BS" 
   (	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"CESTREC" NUMBER(1,0), 
	"FMOVINI" DATE, 
	"FMOVFIN" DATE, 
	"FEFEADM" DATE, 
	"FMOVDIA" DATE, 
	"CMOTMOV" NUMBER(3,0), 
	"SUCREA" VARCHAR2(20 BYTE), 
	"FECHAING" DATE, 
	"MODULO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT DELETE ON "AXIS"."MIG_MOVRECIBO_BS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_MOVRECIBO_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_MOVRECIBO_BS" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_MOVRECIBO_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_MOVRECIBO_BS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_MOVRECIBO_BS" TO "PROGRAMADORESCSI";
