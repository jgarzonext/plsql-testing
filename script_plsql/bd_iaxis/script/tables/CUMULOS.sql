--------------------------------------------------------
--  DDL for Table CUMULOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."CUMULOS" 
   (	"SCUMULO" NUMBER(6,0), 
	"FCUMINI" DATE, 
	"FCUMFIN" DATE, 
	"CCUMPROD" NUMBER(6,0), 
	"SPERSON" NUMBER(10,0), 
	"CTIPCUM" NUMBER(1,0), 
	"CRAMO" NUMBER(8,0), 
	"SPRODUC" NUMBER(6,0), 
	"CZONA" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CUMULOS"."SCUMULO" IS 'Identificador de un c�mulo';
   COMMENT ON COLUMN "AXIS"."CUMULOS"."CCUMPROD" IS 'Codi de c�mul per producte';
   COMMENT ON COLUMN "AXIS"."CUMULOS"."SPERSON" IS 'Persona a la que se refiere el c�mulo';
   COMMENT ON COLUMN "AXIS"."CUMULOS"."CTIPCUM" IS 'Tipus de c�mul';
   COMMENT ON COLUMN "AXIS"."CUMULOS"."CRAMO" IS 'Ramo';
   COMMENT ON COLUMN "AXIS"."CUMULOS"."SPRODUC" IS 'Producto';
   COMMENT ON COLUMN "AXIS"."CUMULOS"."CZONA" IS 'Codigo de zona de riesgo';
  GRANT UPDATE ON "AXIS"."CUMULOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CUMULOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CUMULOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CUMULOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CUMULOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CUMULOS" TO "PROGRAMADORESCSI";
