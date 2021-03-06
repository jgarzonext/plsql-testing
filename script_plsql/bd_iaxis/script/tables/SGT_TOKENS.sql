--------------------------------------------------------
--  DDL for Table SGT_TOKENS
--------------------------------------------------------

  CREATE TABLE "AXIS"."SGT_TOKENS" 
   (	"SESION" NUMBER(6,0), 
	"TOKEN" VARCHAR2(40 BYTE), 
	"VALOR" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."SGT_TOKENS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SGT_TOKENS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SGT_TOKENS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SGT_TOKENS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SGT_TOKENS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SGT_TOKENS" TO "PROGRAMADORESCSI";
