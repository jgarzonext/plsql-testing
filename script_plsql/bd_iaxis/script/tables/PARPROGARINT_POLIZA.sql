--------------------------------------------------------
--  DDL for Table PARPROGARINT_POLIZA
--------------------------------------------------------

  CREATE TABLE "AXIS"."PARPROGARINT_POLIZA" 
   (	"SSEGURO" NUMBER, 
	"FINICIO" DATE, 
	"FFIN" DATE, 
	"IINTTEC" NUMBER(9,6), 
	"IINTGAR" NUMBER(9,6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."PARPROGARINT_POLIZA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PARPROGARINT_POLIZA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PARPROGARINT_POLIZA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PARPROGARINT_POLIZA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PARPROGARINT_POLIZA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PARPROGARINT_POLIZA" TO "PROGRAMADORESCSI";
