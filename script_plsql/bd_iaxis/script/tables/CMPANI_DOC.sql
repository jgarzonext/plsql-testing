--------------------------------------------------------
--  DDL for Table CMPANI_DOC
--------------------------------------------------------

  CREATE TABLE "AXIS"."CMPANI_DOC" 
   (	"CCOMPANI" NUMBER, 
	"IDDOCGDX" NUMBER, 
	"CTIPO" NUMBER, 
	"FCADUCI" DATE, 
	"FALTA" DATE, 
	"TOBSERV" VARCHAR2(2000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."CMPANI_DOC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CMPANI_DOC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CMPANI_DOC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CMPANI_DOC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CMPANI_DOC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CMPANI_DOC" TO "PROGRAMADORESCSI";
