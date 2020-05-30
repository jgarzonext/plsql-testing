--------------------------------------------------------
--  DDL for Table CALCOMISPREV
--------------------------------------------------------

  CREATE TABLE "AXIS"."CALCOMISPREV" 
   (	"NRECIBO" NUMBER, 
	"CGARANT" NUMBER(4,0), 
	"NRIESGO" NUMBER(6,0), 
	"CAGEVEN" NUMBER(6,0), 
	"NMOVIMA" NUMBER(4,0), 
	"ICALCOM" NUMBER, 
	"PCALCOM" NUMBER(5,3), 
	"ICOMCOB" NUMBER, 
	"NMESAGT" NUMBER(2,0), 
	"CGENCOM" NUMBER(1,0), 
	"CGENDEV" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."CALCOMISPREV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CALCOMISPREV" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CALCOMISPREV" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CALCOMISPREV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CALCOMISPREV" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CALCOMISPREV" TO "PROGRAMADORESCSI";
