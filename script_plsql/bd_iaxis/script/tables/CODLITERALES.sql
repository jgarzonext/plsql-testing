--------------------------------------------------------
--  DDL for Table CODLITERALES
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODLITERALES" 
   (	"SLITERA" NUMBER(6,0), 
	"CLITERA" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODLITERALES"."SLITERA" IS 'Secuencia del literal';
   COMMENT ON COLUMN "AXIS"."CODLITERALES"."CLITERA" IS 'Tipo de literal';
  GRANT UPDATE ON "AXIS"."CODLITERALES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODLITERALES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODLITERALES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODLITERALES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODLITERALES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODLITERALES" TO "PROGRAMADORESCSI";