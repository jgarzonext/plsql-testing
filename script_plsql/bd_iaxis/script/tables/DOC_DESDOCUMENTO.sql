--------------------------------------------------------
--  DDL for Table DOC_DESDOCUMENTO
--------------------------------------------------------

  CREATE TABLE "AXIS"."DOC_DESDOCUMENTO" 
   (	"CDOCUME" NUMBER(6,0), 
	"CIDIOMA" NUMBER(2,0), 
	"TTITDOC" VARCHAR2(200 BYTE), 
	"TDOCUME" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DOC_DESDOCUMENTO"."CDOCUME" IS 'C�digo Documento';
   COMMENT ON COLUMN "AXIS"."DOC_DESDOCUMENTO"."CIDIOMA" IS 'C�digo Idioma';
   COMMENT ON COLUMN "AXIS"."DOC_DESDOCUMENTO"."TTITDOC" IS 'Nombre Identificativo Documento';
   COMMENT ON COLUMN "AXIS"."DOC_DESDOCUMENTO"."TDOCUME" IS 'Descripci�n Documento';
   COMMENT ON TABLE "AXIS"."DOC_DESDOCUMENTO"  IS 'Descripci�n documento siniestro';
  GRANT UPDATE ON "AXIS"."DOC_DESDOCUMENTO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DOC_DESDOCUMENTO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DOC_DESDOCUMENTO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DOC_DESDOCUMENTO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DOC_DESDOCUMENTO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DOC_DESDOCUMENTO" TO "PROGRAMADORESCSI";
