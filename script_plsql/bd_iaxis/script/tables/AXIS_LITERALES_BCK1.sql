--------------------------------------------------------
--  DDL for Table AXIS_LITERALES_BCK1
--------------------------------------------------------

  CREATE TABLE "AXIS"."AXIS_LITERALES_BCK1" 
   (	"CIDIOMA" NUMBER(2,0), 
	"SLITERA" NUMBER(8,0), 
	"TLITERA" VARCHAR2(400 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."AXIS_LITERALES_BCK1" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AXIS_LITERALES_BCK1" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AXIS_LITERALES_BCK1" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AXIS_LITERALES_BCK1" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AXIS_LITERALES_BCK1" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AXIS_LITERALES_BCK1" TO "PROGRAMADORESCSI";
