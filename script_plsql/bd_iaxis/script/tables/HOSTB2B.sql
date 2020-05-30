--------------------------------------------------------
--  DDL for Table HOSTB2B
--------------------------------------------------------

  CREATE TABLE "AXIS"."HOSTB2B" 
   (	"URL" VARCHAR2(500 BYTE), 
	"EMPRESA" VARCHAR2(100 BYTE), 
	"ACTIVO" VARCHAR2(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."HOSTB2B" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HOSTB2B" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HOSTB2B" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HOSTB2B" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HOSTB2B" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HOSTB2B" TO "PROGRAMADORESCSI";
