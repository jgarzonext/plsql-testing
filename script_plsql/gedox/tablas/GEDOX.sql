--------------------------------------------------------
--  DDL for Table GEDOX
--------------------------------------------------------

  CREATE TABLE "GEDOX"."GEDOX" 
   (	"IDDOC" NUMBER(10,0), 
	"FICHERO" VARCHAR2(1000 BYTE), 
	"IDCAT" NUMBER(8,0), 
	"TDESCRIP" VARCHAR2(1000 BYTE), 
	"FALTA" DATE, 
	"FMODIF" DATE, 
	"USUMOD" VARCHAR2(20 BYTE), 
	"USUALTA" VARCHAR2(20 BYTE), 
	"AUTOR" VARCHAR2(30 BYTE), 
	"CLICK" NUMBER, 
	"TIPO" NUMBER(1,0), 
	"FARCHIV" DATE, 
	"FELIMIN" DATE, 
	"FCADUCI" DATE, 
	"CESTDOC" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "GEDOX" ;

   COMMENT ON COLUMN "GEDOX"."GEDOX"."FARCHIV" IS 'Fecha para enviar a otro repositorio';
   COMMENT ON COLUMN "GEDOX"."GEDOX"."FELIMIN" IS 'Fecha para borrar el documento';
   COMMENT ON COLUMN "GEDOX"."GEDOX"."FCADUCI" IS 'Fecha de caducidad del documento';
   COMMENT ON COLUMN "GEDOX"."GEDOX"."CESTDOC" IS 'Estado del documento 0 adjunto, 1 archivado, 2 caducado, 3 eliminado';
