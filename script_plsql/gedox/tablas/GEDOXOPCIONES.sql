--------------------------------------------------------
--  DDL for Table GEDOXOPCIONES
--------------------------------------------------------

  CREATE TABLE "GEDOX"."GEDOXOPCIONES" 
   (	"COPCION" NUMBER(6,0), 
	"CMENU" NUMBER(6,0), 
	"CMENPAD" NUMBER(6,0), 
	"NORDEN" NUMBER(3,0), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"CFORM" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "GEDOX" ;
