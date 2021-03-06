--------------------------------------------------------
--  DDL for Table MIG_CTGAR_VEHICULO_BS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_CTGAR_VEHICULO_BS" 
   (	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"CPAIS" NUMBER(3,0), 
	"CPROVIN" NUMBER, 
	"CPOBLAC" NUMBER, 
	"CMARCA" NUMBER, 
	"CTIPO" NUMBER, 
	"NMOTOR" VARCHAR2(100 BYTE), 
	"NPLACA" VARCHAR2(10 BYTE), 
	"NCOLOR" NUMBER, 
	"NSERIE" VARCHAR2(100 BYTE), 
	"CASEGURA" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT DELETE ON "AXIS"."MIG_CTGAR_VEHICULO_BS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_CTGAR_VEHICULO_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CTGAR_VEHICULO_BS" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_CTGAR_VEHICULO_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CTGAR_VEHICULO_BS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_CTGAR_VEHICULO_BS" TO "PROGRAMADORESCSI";
