--------------------------------------------------------
--  DDL for Table CONTAB
--------------------------------------------------------

  CREATE TABLE "AXIS"."CONTAB" 
   (	"CEMPRES" NUMBER(2,0), 
	"NASIENT" NUMBER(8,0), 
	"FASIENT" DATE, 
	"CASIENT" NUMBER(4,0), 
	"FVALOR" DATE, 
	"FMOVIMI" DATE, 
	"CPROGRA" VARCHAR2(10 BYTE), 
	"SPROCES" NUMBER, 
	"FTRASPA" DATE, 
	"SPROCON" NUMBER(6,0), 
	"CERROR" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."CONTAB" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONTAB" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CONTAB" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CONTAB" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONTAB" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CONTAB" TO "PROGRAMADORESCSI";