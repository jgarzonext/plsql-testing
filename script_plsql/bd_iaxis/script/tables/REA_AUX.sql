--------------------------------------------------------
--  DDL for Table REA_AUX
--------------------------------------------------------

  CREATE TABLE "AXIS"."REA_AUX" 
   (	"SPERSON" NUMBER(10,0), 
	"CCUMULO" NUMBER, 
	"SPRODUC" NUMBER(6,0), 
	"SSEGURO" NUMBER, 
	"FEFECTO" DATE, 
	"NRIESGO" NUMBER(6,0), 
	"NMOVIMI" NUMBER(4,0), 
	"CGARANT" NUMBER(4,0), 
	"ICAPITAL" NUMBER, 
	"PRECARG" NUMBER(6,2), 
	"CGARCUM" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."REA_AUX"."CGARCUM" IS 'Identificador de grupo de garant�as que forman cumulo';
  GRANT UPDATE ON "AXIS"."REA_AUX" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REA_AUX" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."REA_AUX" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."REA_AUX" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REA_AUX" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."REA_AUX" TO "PROGRAMADORESCSI";
