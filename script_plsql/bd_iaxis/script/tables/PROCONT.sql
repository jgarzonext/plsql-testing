--------------------------------------------------------
--  DDL for Table PROCONT
--------------------------------------------------------

  CREATE TABLE "AXIS"."PROCONT" 
   (	"SPROCON" NUMBER(6,0), 
	"CEMPRES" NUMBER(2,0), 
	"CPROGRA" VARCHAR2(10 BYTE), 
	"NORDEN" NUMBER(4,0), 
	"FPROINI" DATE, 
	"FPROFIN" DATE, 
	"CPERIOD" NUMBER(1,0), 
	"FULTIMO" DATE, 
	"FPROXIM" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."PROCONT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PROCONT" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PROCONT" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PROCONT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PROCONT" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PROCONT" TO "PROGRAMADORESCSI";
