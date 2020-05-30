--------------------------------------------------------
--  DDL for Table DSIINVENT
--------------------------------------------------------

  CREATE TABLE "AXIS"."DSIINVENT" 
   (	"CINVCOD" VARCHAR2(50 BYTE), 
	"CINVTIP" NUMBER(2,0), 
	"TINVDES" VARCHAR2(40 BYTE), 
	"TINVUBI" VARCHAR2(20 BYTE), 
	"CTRATA" NUMBER(1,0), 
	"CULMODI" NUMBER(2,0), 
	"TCOMENT" VARCHAR2(500 BYTE), 
	"NSITUA" NUMBER(2,0) DEFAULT 0, 
	"FBAJA" DATE, 
	"TVERSIO" VARCHAR2(20 BYTE) DEFAULT '1.0', 
	"CAREA" VARCHAR2(3 BYTE) DEFAULT 'XXX', 
	"CCENTRO" NUMBER(2,0), 
	"CTAUNUM" NUMBER(4,0) DEFAULT 1, 
	"FALTA" DATE, 
	"CUSUALT" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."DSIINVENT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DSIINVENT" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DSIINVENT" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DSIINVENT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DSIINVENT" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DSIINVENT" TO "PROGRAMADORESCSI";
