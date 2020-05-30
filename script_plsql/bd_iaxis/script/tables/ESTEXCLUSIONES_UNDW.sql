--------------------------------------------------------
--  DDL for Table ESTEXCLUSIONES_UNDW
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTEXCLUSIONES_UNDW" 
   (	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"NMOVIMI" NUMBER(4,0), 
	"CEMPRES" NUMBER(5,0), 
	"SORDEN" NUMBER, 
	"NORDEN" NUMBER, 
	"CODEGAR" VARCHAR2(100 BYTE), 
	"LABEL" VARCHAR2(100 BYTE), 
	"CODEXCLUS" VARCHAR2(20 BYTE), 
	"NASEG" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."ESTEXCLUSIONES_UNDW" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTEXCLUSIONES_UNDW" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTEXCLUSIONES_UNDW" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTEXCLUSIONES_UNDW" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTEXCLUSIONES_UNDW" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTEXCLUSIONES_UNDW" TO "PROGRAMADORESCSI";
