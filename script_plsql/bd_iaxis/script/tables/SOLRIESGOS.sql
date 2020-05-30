--------------------------------------------------------
--  DDL for Table SOLRIESGOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."SOLRIESGOS" 
   (	"SSOLICIT" NUMBER(8,0), 
	"NRIESGO" NUMBER(6,0), 
	"TAPELLI" VARCHAR2(40 BYTE), 
	"TNOMBRE" VARCHAR2(20 BYTE), 
	"FNACIMI" DATE, 
	"CSEXPER" NUMBER(1,0), 
	"TNATRIE" VARCHAR2(300 BYTE), 
	"TDOMICI" VARCHAR2(60 BYTE), 
	"CPOBLAC" NUMBER, 
	"CPOSTAL" VARCHAR2(30 BYTE), 
	"CPROVIN" NUMBER, 
	"NASEGUR" NUMBER(6,0), 
	"SPERSON" NUMBER(10,0), 
	"CDOMICI" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."SOLRIESGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SOLRIESGOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SOLRIESGOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SOLRIESGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SOLRIESGOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SOLRIESGOS" TO "PROGRAMADORESCSI";