--------------------------------------------------------
--  DDL for Table HISECO_TIPOCAMBIO
--------------------------------------------------------

  CREATE TABLE "AXIS"."HISECO_TIPOCAMBIO" 
   (	"CMONORI" VARCHAR2(3 BYTE), 
	"CMONDES" VARCHAR2(3 BYTE), 
	"FCAMBIO" DATE, 
	"ITASA" NUMBER(20,10), 
	"CUSUARIO" VARCHAR2(30 BYTE), 
	"FDESDE" DATE, 
	"FHASTA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."HISECO_TIPOCAMBIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISECO_TIPOCAMBIO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HISECO_TIPOCAMBIO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HISECO_TIPOCAMBIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISECO_TIPOCAMBIO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HISECO_TIPOCAMBIO" TO "PROGRAMADORESCSI";
