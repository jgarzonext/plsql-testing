--------------------------------------------------------
--  DDL for Table AUT_AGRUPACIONES
--------------------------------------------------------

  CREATE TABLE "AXIS"."AUT_AGRUPACIONES" 
   (	"CAGRMARCA" VARCHAR2(20 BYTE), 
	"CAGRCLASE" VARCHAR2(20 BYTE), 
	"CAGRTIPO" VARCHAR2(20 BYTE), 
	"CPROVIN" NUMBER, 
	"CPOBLAC" NUMBER, 
	"SPRODUC" NUMBER(6,0), 
	"CCLASIFICACION" VARCHAR2(20 BYTE), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"FBAJA" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AUT_AGRUPACIONES"."CAGRMARCA" IS 'Codigo agrupacion por marca';
   COMMENT ON COLUMN "AXIS"."AUT_AGRUPACIONES"."CAGRCLASE" IS 'Codigo agrupacion por clase';
   COMMENT ON COLUMN "AXIS"."AUT_AGRUPACIONES"."CAGRTIPO" IS 'Codigo agrupacion por tipo';
   COMMENT ON COLUMN "AXIS"."AUT_AGRUPACIONES"."CPROVIN" IS 'codigo departamento';
   COMMENT ON COLUMN "AXIS"."AUT_AGRUPACIONES"."CPOBLAC" IS 'codigo municipio';
   COMMENT ON COLUMN "AXIS"."AUT_AGRUPACIONES"."SPRODUC" IS 'codigo producto';
   COMMENT ON COLUMN "AXIS"."AUT_AGRUPACIONES"."CCLASIFICACION" IS 'Clasificacion (bueno,regular,malo) lista valores 8000906';
   COMMENT ON COLUMN "AXIS"."AUT_AGRUPACIONES"."CUSUALT" IS 'Usuario que da de alta el registro';
   COMMENT ON COLUMN "AXIS"."AUT_AGRUPACIONES"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."AUT_AGRUPACIONES"."CUSUMOD" IS 'Usuario de la última modificación del registro';
   COMMENT ON COLUMN "AXIS"."AUT_AGRUPACIONES"."FMODIFI" IS 'Fecha de la última modificación del registro';
   COMMENT ON COLUMN "AXIS"."AUT_AGRUPACIONES"."FBAJA" IS 'Fecha de baja del registro';
   COMMENT ON TABLE "AXIS"."AUT_AGRUPACIONES"  IS 'Tabla de agrupaciones';
  GRANT UPDATE ON "AXIS"."AUT_AGRUPACIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUT_AGRUPACIONES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AUT_AGRUPACIONES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AUT_AGRUPACIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUT_AGRUPACIONES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AUT_AGRUPACIONES" TO "PROGRAMADORESCSI";
