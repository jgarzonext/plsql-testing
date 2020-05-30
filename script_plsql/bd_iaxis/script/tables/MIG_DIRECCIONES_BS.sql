--------------------------------------------------------
--  DDL for Table MIG_DIRECCIONES_BS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_DIRECCIONES_BS" 
   (	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"SPERSON" NUMBER(10,0), 
	"CAGENTE" NUMBER, 
	"CDOMICI" NUMBER, 
	"CPOSTAL" VARCHAR2(30 BYTE), 
	"CPROVIN" NUMBER, 
	"CPOBLAC" NUMBER, 
	"TNOMVIA" VARCHAR2(200 BYTE), 
	"CTIPDIR" NUMBER(2,0), 
	"CVIAVP" NUMBER(2,0), 
	"CLITVP" NUMBER(2,0), 
	"CBISVP" NUMBER(2,0), 
	"CORVP" NUMBER(2,0), 
	"NVIAADCO" NUMBER(5,0), 
	"CLITCO" NUMBER(2,0), 
	"CORCO" NUMBER(2,0), 
	"NPLACACO" NUMBER(5,0), 
	"COR2CO" NUMBER(2,0), 
	"CDET1IA" NUMBER(2,0), 
	"TNUM1IA" VARCHAR2(100 BYTE), 
	"CDET2IA" NUMBER(2,0), 
	"TNUM2IA" VARCHAR2(100 BYTE), 
	"CDET3IA" NUMBER(2,0), 
	"TNUM3IA" VARCHAR2(100 BYTE), 
	"LOCALIDAD" VARCHAR2(3000 BYTE), 
	"TNUMTEL" VARCHAR2(20 BYTE), 
	"TNUMFAX" VARCHAR2(20 BYTE), 
	"TNUMMOV" VARCHAR2(20 BYTE), 
	"TEMAIL" VARCHAR2(100 BYTE), 
	"SUCREA" VARCHAR2(20 BYTE), 
	"FECHAING" DATE, 
	"MODULO" VARCHAR2(20 BYTE), 
	"TALIAS" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT DELETE ON "AXIS"."MIG_DIRECCIONES_BS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_DIRECCIONES_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_DIRECCIONES_BS" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_DIRECCIONES_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_DIRECCIONES_BS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_DIRECCIONES_BS" TO "PROGRAMADORESCSI";