--------------------------------------------------------
--  DDL for Table AGE_DOCUMENTOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."AGE_DOCUMENTOS" 
   (	"CAGENTE" NUMBER, 
	"IDDOCGEDOX" NUMBER(10,0), 
	"FCADUCA" DATE, 
	"TOBSERVA" VARCHAR2(1000 BYTE), 
	"TAMANO" VARCHAR2(20 BYTE), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FMOVIMI" DATE, 
	"NLIQMEN" NUMBER(4,0) DEFAULT NULL
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AGE_DOCUMENTOS"."CAGENTE" IS 'C�digo de agente';
   COMMENT ON COLUMN "AXIS"."AGE_DOCUMENTOS"."IDDOCGEDOX" IS 'Identificador del documento GEDOX';
   COMMENT ON COLUMN "AXIS"."AGE_DOCUMENTOS"."FCADUCA" IS 'Fecha de caducidad del documento';
   COMMENT ON COLUMN "AXIS"."AGE_DOCUMENTOS"."TOBSERVA" IS 'Observaciones';
   COMMENT ON COLUMN "AXIS"."AGE_DOCUMENTOS"."TAMANO" IS 'Tama�o del fichero';
   COMMENT ON COLUMN "AXIS"."AGE_DOCUMENTOS"."CUSUALT" IS 'C�digo usuario alta del registro';
   COMMENT ON COLUMN "AXIS"."AGE_DOCUMENTOS"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."AGE_DOCUMENTOS"."CUSUARI" IS 'C�digo usuario modificaci�n del registro';
   COMMENT ON COLUMN "AXIS"."AGE_DOCUMENTOS"."FMOVIMI" IS 'Fecha modificaci�n del registro';
   COMMENT ON TABLE "AXIS"."AGE_DOCUMENTOS"  IS 'Documentos del agente';
  GRANT UPDATE ON "AXIS"."AGE_DOCUMENTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGE_DOCUMENTOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AGE_DOCUMENTOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AGE_DOCUMENTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGE_DOCUMENTOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AGE_DOCUMENTOS" TO "PROGRAMADORESCSI";
