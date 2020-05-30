--------------------------------------------------------
--  DDL for Table OPERACION
--------------------------------------------------------

  CREATE TABLE "AXIS"."OPERACION" 
   (	"CIDIOMA" NUMBER(2,0), 
	"COPEPER" NUMBER(2,0), 
	"TOPEPER" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."OPERACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."OPERACION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."OPERACION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."OPERACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."OPERACION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."OPERACION" TO "PROGRAMADORESCSI";
