--------------------------------------------------------
--  DDL for Table INT_CARGA_LOAD_SPL
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_CARGA_LOAD_SPL" 
   (	"CDARCHI" VARCHAR2(50 BYTE), 
	"PROCESO" NUMBER, 
	"NLINEA" NUMBER(9,0), 
	"VCAMPO1" VARCHAR2(200 BYTE), 
	"VCAMPO2" VARCHAR2(200 BYTE), 
	"VCAMPO3" VARCHAR2(200 BYTE), 
	"VCAMPO4" VARCHAR2(200 BYTE), 
	"VCAMPO5" VARCHAR2(200 BYTE), 
	"VCAMPO6" VARCHAR2(200 BYTE), 
	"VCAMPO7" VARCHAR2(200 BYTE), 
	"VCAMPO8" VARCHAR2(200 BYTE), 
	"VCAMPO9" VARCHAR2(200 BYTE), 
	"VCAMPO10" VARCHAR2(200 BYTE), 
	"VCAMPO11" VARCHAR2(200 BYTE), 
	"VCAMPO12" VARCHAR2(200 BYTE), 
	"VCAMPO13" VARCHAR2(200 BYTE), 
	"VCAMPO14" VARCHAR2(200 BYTE), 
	"VCAMPO15" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INT_CARGA_LOAD_SPL"."PROCESO" IS 'Proceso';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_LOAD_SPL"."NLINEA" IS 'Linea';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_LOAD_SPL"."VCAMPO1" IS 'Campo1';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_LOAD_SPL"."VCAMPO2" IS 'Campo2';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_LOAD_SPL"."VCAMPO3" IS 'Campo3';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_LOAD_SPL"."VCAMPO4" IS 'Campo4';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_LOAD_SPL"."VCAMPO5" IS 'Campo5';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_LOAD_SPL"."VCAMPO6" IS 'Campo6';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_LOAD_SPL"."VCAMPO7" IS 'Campo7';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_LOAD_SPL"."VCAMPO8" IS 'Campo8';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_LOAD_SPL"."VCAMPO9" IS 'Campo9';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_LOAD_SPL"."VCAMPO10" IS 'Campo10';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_LOAD_SPL"."VCAMPO11" IS 'Campo11';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_LOAD_SPL"."VCAMPO12" IS 'Campo12';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_LOAD_SPL"."VCAMPO13" IS 'Campo13';
  GRANT UPDATE ON "AXIS"."INT_CARGA_LOAD_SPL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_CARGA_LOAD_SPL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INT_CARGA_LOAD_SPL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INT_CARGA_LOAD_SPL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_CARGA_LOAD_SPL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INT_CARGA_LOAD_SPL" TO "PROGRAMADORESCSI";
