--------------------------------------------------------
--  DDL for Table TARIFREA
--------------------------------------------------------

  CREATE TABLE "AXIS"."TARIFREA" 
   (	"SCONTRA" NUMBER(6,0), 
	"NVERSIO" NUMBER(2,0), 
	"CGARANT" NUMBER(4,0), 
	"CTARIFA" NUMBER(5,0), 
	"PAPLICA" NUMBER(5,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."TARIFREA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TARIFREA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TARIFREA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TARIFREA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TARIFREA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TARIFREA" TO "PROGRAMADORESCSI";