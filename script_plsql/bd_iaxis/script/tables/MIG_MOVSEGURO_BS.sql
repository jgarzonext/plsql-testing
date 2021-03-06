--------------------------------------------------------
--  DDL for Table MIG_MOVSEGURO_BS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_MOVSEGURO_BS" 
   (	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"NMOVIMI" NUMBER(4,0), 
	"CMOTVEN" NUMBER(3,0), 
	"FMOVIMI" DATE, 
	"CMOVSEG" NUMBER(3,0), 
	"FEFECTO" DATE, 
	"CUSUMOV" VARCHAR2(20 BYTE), 
	"CMOTMOV" VARCHAR2(20 BYTE), 
	"NMOVIMI_ANT" VARCHAR2(20 BYTE), 
	"SUCREA" VARCHAR2(20 BYTE), 
	"FECHAING" DATE, 
	"MODULO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT DELETE ON "AXIS"."MIG_MOVSEGURO_BS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_MOVSEGURO_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_MOVSEGURO_BS" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_MOVSEGURO_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_MOVSEGURO_BS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_MOVSEGURO_BS" TO "PROGRAMADORESCSI";
