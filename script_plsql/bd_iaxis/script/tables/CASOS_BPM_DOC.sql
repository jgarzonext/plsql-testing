--------------------------------------------------------
--  DDL for Table CASOS_BPM_DOC
--------------------------------------------------------

  CREATE TABLE "AXIS"."CASOS_BPM_DOC" 
   (	"CEMPRES" NUMBER(5,0), 
	"NNUMCASO" NUMBER, 
	"IDGESTORDOCBPM" VARCHAR2(50 BYTE), 
	"CDOCUME" NUMBER, 
	"CESTADODOC" NUMBER(3,0), 
	"IDDOC" NUMBER, 
	"FALTA" DATE, 
	"FBAJA" DATE, 
	"CUSUALT" VARCHAR2(32 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CASOS_BPM_DOC"."CEMPRES" IS 'Código de empresa';
   COMMENT ON COLUMN "AXIS"."CASOS_BPM_DOC"."NNUMCASO" IS 'Número de caso';
   COMMENT ON COLUMN "AXIS"."CASOS_BPM_DOC"."IDGESTORDOCBPM" IS 'Id del documento en el gestor documental BPM';
   COMMENT ON COLUMN "AXIS"."CASOS_BPM_DOC"."CDOCUME" IS 'Código de documento';
   COMMENT ON COLUMN "AXIS"."CASOS_BPM_DOC"."CESTADODOC" IS 'Estado del documento VF 965';
   COMMENT ON COLUMN "AXIS"."CASOS_BPM_DOC"."IDDOC" IS 'Id del documento en GEDOX';
   COMMENT ON COLUMN "AXIS"."CASOS_BPM_DOC"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."CASOS_BPM_DOC"."FBAJA" IS 'Fecha de baja';
   COMMENT ON COLUMN "AXIS"."CASOS_BPM_DOC"."CUSUALT" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."CASOS_BPM_DOC"."FMODIFI" IS 'Fecha de modificación';
   COMMENT ON COLUMN "AXIS"."CASOS_BPM_DOC"."CUSUMOD" IS 'Usuario de modificación';
   COMMENT ON TABLE "AXIS"."CASOS_BPM_DOC"  IS 'Contiene los identificadores de los documentos requeridos que iAxis ha ido a buscar al BPM y también los que el BPM ha comunicado a iAxis que se han actualizado para que iAxis vuelva a ir a buscarlos';
  GRANT UPDATE ON "AXIS"."CASOS_BPM_DOC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CASOS_BPM_DOC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CASOS_BPM_DOC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CASOS_BPM_DOC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CASOS_BPM_DOC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CASOS_BPM_DOC" TO "PROGRAMADORESCSI";
