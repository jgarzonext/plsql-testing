--------------------------------------------------------
--  DDL for Table CARGA_FICHEROS
--------------------------------------------------------

  CREATE TABLE "AXIS"."CARGA_FICHEROS" 
   (	"CCOMPANI" NUMBER, 
	"TFICHERO" VARCHAR2(1000 BYTE), 
	"CTIPO" NUMBER(1,0), 
	"FCARGA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CARGA_FICHEROS"."CCOMPANI" IS 'C�digo de compa�ia';
   COMMENT ON COLUMN "AXIS"."CARGA_FICHEROS"."TFICHERO" IS 'Fichero cargado y procesado';
   COMMENT ON COLUMN "AXIS"."CARGA_FICHEROS"."CTIPO" IS 'Tipo de fichero cargado Vf.: 1025';
   COMMENT ON COLUMN "AXIS"."CARGA_FICHEROS"."FCARGA" IS 'Fecha de Carga';
   COMMENT ON TABLE "AXIS"."CARGA_FICHEROS"  IS 'Tabla que registra los ficheros cargados por compa�ia';
  GRANT UPDATE ON "AXIS"."CARGA_FICHEROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CARGA_FICHEROS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CARGA_FICHEROS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CARGA_FICHEROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CARGA_FICHEROS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CARGA_FICHEROS" TO "PROGRAMADORESCSI";
