--------------------------------------------------------
--  DDL for Table EXTBSGRUPOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."EXTBSGRUPOS" 
   (	"CGRUPO" VARCHAR2(2 BYTE), 
	"TGRUPO" VARCHAR2(100 BYTE), 
	"ICAPMAX" NUMBER(10,0), 
	"ICAPMIN" NUMBER(10,0), 
	"NMESMAX" NUMBER(3,0), 
	"NMESMIN" NUMBER(3,0), 
	"CTIPESC" VARCHAR2(1 BYTE), 
	"IPRIMIN" NUMBER(10,0), 
	"PINTERE" NUMBER(6,4)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."EXTBSGRUPOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EXTBSGRUPOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."EXTBSGRUPOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."EXTBSGRUPOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EXTBSGRUPOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."EXTBSGRUPOS" TO "PROGRAMADORESCSI";
