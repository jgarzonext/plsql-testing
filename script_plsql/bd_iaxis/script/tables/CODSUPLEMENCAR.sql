--------------------------------------------------------
--  DDL for Table CODSUPLEMENCAR
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODSUPLEMENCAR" 
   (	"SSUPLEM" NUMBER(3,0), 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"TPROCEDIM" VARCHAR2(100 BYTE), 
	"NORDEN" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODSUPLEMENCAR"."SSUPLEM" IS 'C�digo del procedimiento';
   COMMENT ON COLUMN "AXIS"."CODSUPLEMENCAR"."CRAMO" IS 'C�digo de ramo';
   COMMENT ON COLUMN "AXIS"."CODSUPLEMENCAR"."CMODALI" IS 'C�digo de modalidad';
   COMMENT ON COLUMN "AXIS"."CODSUPLEMENCAR"."CTIPSEG" IS 'C�digo de tipo';
   COMMENT ON COLUMN "AXIS"."CODSUPLEMENCAR"."CCOLECT" IS 'C�digo de colectividad';
   COMMENT ON COLUMN "AXIS"."CODSUPLEMENCAR"."TPROCEDIM" IS 'Procedimiento a ejecutar';
   COMMENT ON COLUMN "AXIS"."CODSUPLEMENCAR"."NORDEN" IS 'Orden de ejecuci�n de los procedimientos';
   COMMENT ON TABLE "AXIS"."CODSUPLEMENCAR"  IS 'Procedimientos aplicables antes de la cartera';
  GRANT UPDATE ON "AXIS"."CODSUPLEMENCAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODSUPLEMENCAR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODSUPLEMENCAR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODSUPLEMENCAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODSUPLEMENCAR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODSUPLEMENCAR" TO "PROGRAMADORESCSI";
