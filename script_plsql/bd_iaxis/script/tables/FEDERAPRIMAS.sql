--------------------------------------------------------
--  DDL for Table FEDERAPRIMAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."FEDERAPRIMAS" 
   (	"NPOLIZA" NUMBER, 
	"DIAMES" VARCHAR2(5 BYTE), 
	"NPERCEN" NUMBER(5,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."FEDERAPRIMAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FEDERAPRIMAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."FEDERAPRIMAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."FEDERAPRIMAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FEDERAPRIMAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."FEDERAPRIMAS" TO "PROGRAMADORESCSI";
