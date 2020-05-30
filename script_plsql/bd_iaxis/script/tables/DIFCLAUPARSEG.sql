--------------------------------------------------------
--  DDL for Table DIFCLAUPARSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."DIFCLAUPARSEG" 
   (	"SSEGURO" NUMBER, 
	"SCLAGEN" NUMBER(4,0), 
	"NPARAME" NUMBER(2,0), 
	"TVALOR" VARCHAR2(120 BYTE), 
	"CTIPPAR" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DIFCLAUPARSEG"."SSEGURO" IS 'N�mero consecutivo de seguro asignado autom�ticamente.';
   COMMENT ON COLUMN "AXIS"."DIFCLAUPARSEG"."SCLAGEN" IS 'Identificador de cl�usula';
   COMMENT ON COLUMN "AXIS"."DIFCLAUPARSEG"."NPARAME" IS 'N�mero de par�metro';
   COMMENT ON COLUMN "AXIS"."DIFCLAUPARSEG"."TVALOR" IS 'Valor del par�metro';
   COMMENT ON COLUMN "AXIS"."DIFCLAUPARSEG"."CTIPPAR" IS 'Tipo de par�metro';
  GRANT UPDATE ON "AXIS"."DIFCLAUPARSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DIFCLAUPARSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DIFCLAUPARSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DIFCLAUPARSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DIFCLAUPARSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DIFCLAUPARSEG" TO "PROGRAMADORESCSI";
