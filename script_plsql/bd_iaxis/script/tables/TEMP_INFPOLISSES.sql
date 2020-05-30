--------------------------------------------------------
--  DDL for Table TEMP_INFPOLISSES
--------------------------------------------------------

  CREATE TABLE "AXIS"."TEMP_INFPOLISSES" 
   (	"CPROCES" NUMBER(10,0), 
	"SSEGURO" NUMBER, 
	"NPOLIZA" NUMBER, 
	"NCERTIF" NUMBER, 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"FEFECTO" DATE, 
	"FEMISIO" DATE, 
	"FCARANU" DATE, 
	"CDURACI" NUMBER(1,0), 
	"NDURACI" NUMBER(5,2), 
	"CFORPAG" NUMBER(2,0), 
	"FVENCIM" DATE, 
	"CAGENTE" NUMBER, 
	"CACTIVI" NUMBER(4,0), 
	"COBJASE" NUMBER(2,0), 
	"CTIPCOA" NUMBER(1,0), 
	"NRIESGO" NUMBER(6,0), 
	"NASEGUR" NUMBER(6,0), 
	"TNATRIE" VARCHAR2(300 BYTE), 
	"SPERSON" NUMBER(10,0), 
	"CGARANT" NUMBER(4,0), 
	"IPRIANU" NUMBER, 
	"ICAPITAL" NUMBER, 
	"CTARIFA" NUMBER(5,0), 
	"CREVALI" NUMBER(1,0), 
	"PREVALI" NUMBER(5,2), 
	"PDTOCOM" NUMBER(6,2), 
	"IEXTRAP" NUMBER(19,12), 
	"PRECARG" NUMBER(6,2), 
	"ITARREA" NUMBER(24,12)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."TEMP_INFPOLISSES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TEMP_INFPOLISSES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TEMP_INFPOLISSES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TEMP_INFPOLISSES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TEMP_INFPOLISSES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TEMP_INFPOLISSES" TO "PROGRAMADORESCSI";
