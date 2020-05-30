--------------------------------------------------------
--  DDL for Table GARANGENPRO
--------------------------------------------------------

  CREATE TABLE "AXIS"."GARANGENPRO" 
   (	"CIDIOMA" NUMBER(2,0), 
	"SPRODUC" NUMBER(6,0), 
	"CGARANT" NUMBER(4,0), 
	"TGARANT" VARCHAR2(120 BYTE), 
	"CACTIVI" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."GARANGENPRO"."CIDIOMA" IS 'Código de Idioma';
   COMMENT ON COLUMN "AXIS"."GARANGENPRO"."SPRODUC" IS 'Código de producto';
   COMMENT ON COLUMN "AXIS"."GARANGENPRO"."CGARANT" IS 'Código de garantía';
   COMMENT ON COLUMN "AXIS"."GARANGENPRO"."TGARANT" IS 'Descripción de garantía';
   COMMENT ON COLUMN "AXIS"."GARANGENPRO"."CACTIVI" IS 'Actividad';
   COMMENT ON TABLE "AXIS"."GARANGENPRO"  IS 'tabla de descripciones alternativas en documentos para garantías.';
  GRANT DELETE ON "AXIS"."GARANGENPRO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."GARANGENPRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GARANGENPRO" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."GARANGENPRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GARANGENPRO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."GARANGENPRO" TO "PROGRAMADORESCSI";