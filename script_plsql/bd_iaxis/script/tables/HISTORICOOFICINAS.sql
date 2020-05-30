--------------------------------------------------------
--  DDL for Table HISTORICOOFICINAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."HISTORICOOFICINAS" 
   (	"SSEGURO" NUMBER, 
	"FINICIO" DATE, 
	"FFIN" DATE, 
	"COFICIN" NUMBER(4,0), 
	"CBANCO" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HISTORICOOFICINAS"."SSEGURO" IS 'N�mero de secuencia de seguro';
   COMMENT ON COLUMN "AXIS"."HISTORICOOFICINAS"."COFICIN" IS 'C�digo de oficina';
  GRANT UPDATE ON "AXIS"."HISTORICOOFICINAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISTORICOOFICINAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HISTORICOOFICINAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HISTORICOOFICINAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISTORICOOFICINAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HISTORICOOFICINAS" TO "PROGRAMADORESCSI";
