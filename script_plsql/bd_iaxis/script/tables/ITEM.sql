--------------------------------------------------------
--  DDL for Table ITEM
--------------------------------------------------------

  CREATE TABLE "AXIS"."ITEM" 
   (	"ORDID" NUMBER(4,0), 
	"ITEMID" NUMBER(4,0), 
	"PRODID" NUMBER(6,0), 
	"ACTUALPRICE" NUMBER(8,2), 
	"QTY" NUMBER(8,0), 
	"ITEMTOT" NUMBER(8,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."ITEM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ITEM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ITEM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ITEM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ITEM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ITEM" TO "PROGRAMADORESCSI";