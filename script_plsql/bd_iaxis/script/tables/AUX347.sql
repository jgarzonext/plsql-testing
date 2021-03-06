--------------------------------------------------------
--  DDL for Table AUX347
--------------------------------------------------------

  CREATE TABLE "AXIS"."AUX347" 
   (	"TIPOREG" NUMBER(1,0), 
	"CMODELO" NUMBER(3,0), 
	"EJERCICI" NUMBER(2,0), 
	"AEAT" NUMBER(2,0), 
	"NIFEMPRE" VARCHAR2(10 BYTE), 
	"NOMEMPRE" VARCHAR2(60 BYTE), 
	"CLAU" VARCHAR2(1 BYTE), 
	"SPERSON" NUMBER(10,0), 
	"NIFPREN" VARCHAR2(10 BYTE), 
	"NOMPREN" VARCHAR2(60 BYTE), 
	"CP" VARCHAR2(2 BYTE), 
	"SUMATOT" NUMBER(15,0), 
	"TIPO" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."AUX347" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUX347" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AUX347" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AUX347" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUX347" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AUX347" TO "PROGRAMADORESCSI";
