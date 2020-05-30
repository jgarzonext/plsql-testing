--------------------------------------------------------
--  DDL for Table PAR_CONDIC_REGLAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."PAR_CONDIC_REGLAS" 
   (	"SCONDREG" NUMBER(6,0), 
	"CREGLA" NUMBER(6,0), 
	"CPERFEXG" NUMBER(2,0), 
	"CPREGUN" NUMBER(4,0), 
	"CRESPUE" NUMBER(6,0), 
	"NVALINF" NUMBER, 
	"NVALSUP" NUMBER, 
	"CGARANT" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."PAR_CONDIC_REGLAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PAR_CONDIC_REGLAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PAR_CONDIC_REGLAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PAR_CONDIC_REGLAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PAR_CONDIC_REGLAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PAR_CONDIC_REGLAS" TO "PROGRAMADORESCSI";
