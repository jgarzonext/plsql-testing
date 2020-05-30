--------------------------------------------------------
--  DDL for Table DOCUMENT
--------------------------------------------------------

  CREATE TABLE "AXIS"."DOCUMENT" 
   (	"CDOCUMENT" NUMBER(6,0), 
	"NVERSION" NUMBER(6,0), 
	"CIDIOMA" NUMBER(2,0), 
	"TDOCUMENT" VARCHAR2(100 BYTE), 
	"FALTA" DATE, 
	"USU_ALTA" VARCHAR2(20 BYTE), 
	"FBAJA" DATE, 
	"USU_BAJA" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DOCUMENT"."CDOCUMENT" IS 'Codigo de Documentacion';
   COMMENT ON COLUMN "AXIS"."DOCUMENT"."NVERSION" IS 'Numerador de version documentacion';
   COMMENT ON COLUMN "AXIS"."DOCUMENT"."CIDIOMA" IS 'Codigo idioma';
   COMMENT ON COLUMN "AXIS"."DOCUMENT"."TDOCUMENT" IS 'Descripcion de Documentacion';
   COMMENT ON COLUMN "AXIS"."DOCUMENT"."FALTA" IS 'Fecha alta';
   COMMENT ON COLUMN "AXIS"."DOCUMENT"."USU_ALTA" IS 'Usuario alta';
   COMMENT ON COLUMN "AXIS"."DOCUMENT"."FBAJA" IS 'Fecha baja';
   COMMENT ON COLUMN "AXIS"."DOCUMENT"."USU_BAJA" IS 'Usuario baja';
   COMMENT ON TABLE "AXIS"."DOCUMENT"  IS 'Tabla maestro generico de Documentacion';
  GRANT UPDATE ON "AXIS"."DOCUMENT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DOCUMENT" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DOCUMENT" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DOCUMENT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DOCUMENT" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DOCUMENT" TO "PROGRAMADORESCSI";