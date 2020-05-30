--------------------------------------------------------
--  DDL for Table HISTAB_ERROR
--------------------------------------------------------

  CREATE TABLE "AXIS"."HISTAB_ERROR" 
   (	"FERROR" DATE, 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"TOBJETO" VARCHAR2(500 BYTE), 
	"NTRAZA" NUMBER, 
	"TDESCRIP" VARCHAR2(500 BYTE), 
	"TERROR" VARCHAR2(2500 BYTE), 
	"SEQERROR" NUMBER(8,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."HISTAB_ERROR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISTAB_ERROR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HISTAB_ERROR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HISTAB_ERROR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISTAB_ERROR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HISTAB_ERROR" TO "PROGRAMADORESCSI";
