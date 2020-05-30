--------------------------------------------------------
--  DDL for Table AUDITAR_CUESTIONARIOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."AUDITAR_CUESTIONARIOS" 
   (	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"CUSUARI" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE, 
	"CFORM" VARCHAR2(30 BYTE), 
	"NACCESO" NUMBER(1,0), 
	"CPERMIS" VARCHAR2(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."AUDITAR_CUESTIONARIOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUDITAR_CUESTIONARIOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AUDITAR_CUESTIONARIOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AUDITAR_CUESTIONARIOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUDITAR_CUESTIONARIOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AUDITAR_CUESTIONARIOS" TO "PROGRAMADORESCSI";
