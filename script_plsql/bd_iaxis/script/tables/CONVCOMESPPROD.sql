--------------------------------------------------------
--  DDL for Table CONVCOMESPPROD
--------------------------------------------------------

  CREATE TABLE "AXIS"."CONVCOMESPPROD" 
   (	"IDCONVCOMESP" NUMBER(6,0), 
	"SPRODUC" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CONVCOMESPPROD"."IDCONVCOMESP" IS 'Identificador del convenio';
   COMMENT ON COLUMN "AXIS"."CONVCOMESPPROD"."SPRODUC" IS 'Identificador del producto';
   COMMENT ON TABLE "AXIS"."CONVCOMESPPROD"  IS 'Parametrizaci�n los productos que participan en el convenio de comisi�n especial';
  GRANT UPDATE ON "AXIS"."CONVCOMESPPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONVCOMESPPROD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CONVCOMESPPROD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CONVCOMESPPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONVCOMESPPROD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CONVCOMESPPROD" TO "PROGRAMADORESCSI";