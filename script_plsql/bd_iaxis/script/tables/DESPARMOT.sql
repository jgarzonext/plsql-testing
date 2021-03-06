--------------------------------------------------------
--  DDL for Table DESPARMOT
--------------------------------------------------------

  CREATE TABLE "AXIS"."DESPARMOT" 
   (	"CPARMOT" VARCHAR2(50 BYTE), 
	"CIDIOMA" NUMBER, 
	"TPARMOT" VARCHAR2(150 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DESPARMOT"."CPARMOT" IS 'Codigo del parametro por cmotmov';
   COMMENT ON COLUMN "AXIS"."DESPARMOT"."CIDIOMA" IS 'Id. del idioma';
   COMMENT ON COLUMN "AXIS"."DESPARMOT"."TPARMOT" IS 'Descripción del parametro';
  GRANT UPDATE ON "AXIS"."DESPARMOT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESPARMOT" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DESPARMOT" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DESPARMOT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESPARMOT" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DESPARMOT" TO "PROGRAMADORESCSI";
