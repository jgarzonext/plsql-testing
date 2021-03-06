--------------------------------------------------------
--  DDL for Table MIG_SIN_SINIESTRO_BS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_SIN_SINIESTRO_BS" 
   (	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"NSINIES" VARCHAR2(14 BYTE), 
	"NRIESGO" NUMBER(6,0), 
	"NMOVIMI" NUMBER(4,0), 
	"FSINIES" DATE, 
	"FNOTIFI" DATE, 
	"CCAUSIN" NUMBER(4,0), 
	"CMOTSIN" NUMBER(4,0), 
	"CEVENTO" VARCHAR2(20 BYTE), 
	"CCULPAB" NUMBER(1,0), 
	"CRECLAMA" NUMBER(2,0), 
	"NASEGUR" NUMBER(6,0), 
	"CMEDDEC" NUMBER(2,0), 
	"CTIPDEC" NUMBER(2,0), 
	"CTIPIDE" NUMBER, 
	"NNUMIDE" VARCHAR2(100 BYTE), 
	"TNOM1DEC" VARCHAR2(500 BYTE), 
	"TNOM2DEC" VARCHAR2(500 BYTE), 
	"TAPE1DEC" VARCHAR2(60 BYTE), 
	"TAPE2DEC" VARCHAR2(60 BYTE), 
	"TTELDEC" VARCHAR2(100 BYTE), 
	"TSINIES" VARCHAR2(2000 BYTE), 
	"TEMAILDEC" VARCHAR2(100 BYTE), 
	"NCUACOA" NUMBER(2,0), 
	"NSINCOA" NUMBER(2,0), 
	"CSINCIA" VARCHAR2(50 BYTE), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"SUCREA" VARCHAR2(20 BYTE), 
	"FECHAING" DATE, 
	"MODULO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT DELETE ON "AXIS"."MIG_SIN_SINIESTRO_BS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_SIN_SINIESTRO_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_SIN_SINIESTRO_BS" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_SIN_SINIESTRO_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_SIN_SINIESTRO_BS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_SIN_SINIESTRO_BS" TO "PROGRAMADORESCSI";
