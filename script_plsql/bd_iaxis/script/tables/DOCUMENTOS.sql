--------------------------------------------------------
--  DDL for Table DOCUMENTOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."DOCUMENTOS" 
   (	"CDOCUME" NUMBER(6,0), 
	"FBAJA" DATE, 
	"CUSUALTA" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"NDIAS" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DOCUMENTOS"."CDOCUME" IS 'Codigo del documento';
   COMMENT ON COLUMN "AXIS"."DOCUMENTOS"."FBAJA" IS 'Fecha de baja del documento';
   COMMENT ON COLUMN "AXIS"."DOCUMENTOS"."CUSUALTA" IS 'Codigo del usuario que da de alta el documento';
   COMMENT ON COLUMN "AXIS"."DOCUMENTOS"."FALTA" IS 'Fecha de alta del documento';
   COMMENT ON COLUMN "AXIS"."DOCUMENTOS"."CUSUMOD" IS 'Codigo del usuario que ha llevado a cabo la ultima modificacion';
   COMMENT ON COLUMN "AXIS"."DOCUMENTOS"."FMODIFI" IS 'Fecha de la ultima modificacion';
   COMMENT ON COLUMN "AXIS"."DOCUMENTOS"."NDIAS" IS 'Si esta informado, marca los dias de validez de un documento desde su recepcion';
   COMMENT ON TABLE "AXIS"."DOCUMENTOS"  IS 'Tabla de documentos';
  GRANT UPDATE ON "AXIS"."DOCUMENTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DOCUMENTOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DOCUMENTOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DOCUMENTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DOCUMENTOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DOCUMENTOS" TO "PROGRAMADORESCSI";
