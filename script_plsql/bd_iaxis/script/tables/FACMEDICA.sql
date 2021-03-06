--------------------------------------------------------
--  DDL for Table FACMEDICA
--------------------------------------------------------

  CREATE TABLE "AXIS"."FACMEDICA" 
   (	"SFACTUR" NUMBER(10,0), 
	"FFACTUR" DATE, 
	"CCENTRO" NUMBER(3,0), 
	"FCONTAB" DATE, 
	"SPERDES" NUMBER(10,0), 
	"FPROCES" DATE, 
	"CCCOSTE" NUMBER(3,0), 
	"SSEGURO" NUMBER, 
	"SPERFAC" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."FACMEDICA"."SFACTUR" IS 'Secuencia numero de factura';
   COMMENT ON COLUMN "AXIS"."FACMEDICA"."FFACTUR" IS 'Fecha de factura';
   COMMENT ON COLUMN "AXIS"."FACMEDICA"."CCENTRO" IS 'Centro de facturacion';
   COMMENT ON COLUMN "AXIS"."FACMEDICA"."FCONTAB" IS 'Fecha de contabilidad';
   COMMENT ON COLUMN "AXIS"."FACMEDICA"."SPERDES" IS 'Identificador �nico de la Personas';
  GRANT UPDATE ON "AXIS"."FACMEDICA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FACMEDICA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."FACMEDICA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."FACMEDICA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FACMEDICA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."FACMEDICA" TO "PROGRAMADORESCSI";
