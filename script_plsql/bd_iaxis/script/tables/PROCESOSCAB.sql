--------------------------------------------------------
--  DDL for Table PROCESOSCAB
--------------------------------------------------------

  CREATE TABLE "AXIS"."PROCESOSCAB" 
   (	"SPROCES" NUMBER, 
	"CEMPRES" NUMBER(2,0), 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FPROINI" DATE, 
	"CPROCES" VARCHAR2(20 BYTE), 
	"NERROR" NUMBER(8,0), 
	"TPROCES" VARCHAR2(120 BYTE), 
	"FPROFIN" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PROCESOSCAB"."SPROCES" IS 'Identificador de proceso';
   COMMENT ON COLUMN "AXIS"."PROCESOSCAB"."CEMPRES" IS 'C�digo de Empresa';
   COMMENT ON COLUMN "AXIS"."PROCESOSCAB"."CUSUARI" IS 'C�digo de usuario.';
   COMMENT ON COLUMN "AXIS"."PROCESOSCAB"."FPROINI" IS 'Hora inicio proceso';
   COMMENT ON COLUMN "AXIS"."PROCESOSCAB"."CPROCES" IS 'C�digo de proceso';
   COMMENT ON COLUMN "AXIS"."PROCESOSCAB"."NERROR" IS 'C�digo de error';
   COMMENT ON COLUMN "AXIS"."PROCESOSCAB"."TPROCES" IS 'Par�metros del proceso';
   COMMENT ON COLUMN "AXIS"."PROCESOSCAB"."FPROFIN" IS 'Hora final proceso';
  GRANT UPDATE ON "AXIS"."PROCESOSCAB" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PROCESOSCAB" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PROCESOSCAB" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PROCESOSCAB" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PROCESOSCAB" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PROCESOSCAB" TO "PROGRAMADORESCSI";
