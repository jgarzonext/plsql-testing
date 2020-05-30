--------------------------------------------------------
--  DDL for Table CONVCOMESPAGE
--------------------------------------------------------

  CREATE TABLE "AXIS"."CONVCOMESPAGE" 
   (	"IDCONVCOMESP" NUMBER(6,0), 
	"CAGENTE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CONVCOMESPAGE"."IDCONVCOMESP" IS 'Identificador del convenio';
   COMMENT ON COLUMN "AXIS"."CONVCOMESPAGE"."CAGENTE" IS 'Código de agente';
   COMMENT ON TABLE "AXIS"."CONVCOMESPAGE"  IS 'Parametrización los agentes que participan en el convenio de comisión especial';
  GRANT UPDATE ON "AXIS"."CONVCOMESPAGE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONVCOMESPAGE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CONVCOMESPAGE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CONVCOMESPAGE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONVCOMESPAGE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CONVCOMESPAGE" TO "PROGRAMADORESCSI";
