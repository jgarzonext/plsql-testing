--------------------------------------------------------
--  DDL for Table SOLTOMADORES
--------------------------------------------------------

  CREATE TABLE "AXIS"."SOLTOMADORES" 
   (	"SSOLICIT" NUMBER(8,0), 
	"TAPELLI" VARCHAR2(40 BYTE), 
	"TNOMBRE" VARCHAR2(20 BYTE), 
	"CIDIOMA" NUMBER(2,0), 
	"TDOMICI" VARCHAR2(60 BYTE), 
	"CPOBLAC" NUMBER, 
	"CPOSTAL" VARCHAR2(30 BYTE), 
	"CPROVIN" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."SOLTOMADORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SOLTOMADORES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SOLTOMADORES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SOLTOMADORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SOLTOMADORES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SOLTOMADORES" TO "PROGRAMADORESCSI";
