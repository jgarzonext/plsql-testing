--------------------------------------------------------
--  DDL for Table DELPER_DOCUMENTOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."DELPER_DOCUMENTOS" 
   (	"CUSUARIDEL" VARCHAR2(40 BYTE), 
	"FDEL" DATE, 
	"SPERSON" NUMBER(10,0), 
	"CAGENTE" NUMBER, 
	"IDDOCGEDOX" NUMBER(10,0), 
	"FCADUCA" DATE, 
	"TOBSERVA" VARCHAR2(1000 BYTE), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FMOVIMI" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DELPER_DOCUMENTOS"."SPERSON" IS 'Secuencia �nica de identificaci�n de una persona';
   COMMENT ON COLUMN "AXIS"."DELPER_DOCUMENTOS"."CAGENTE" IS 'C�digo de agente';
   COMMENT ON COLUMN "AXIS"."DELPER_DOCUMENTOS"."IDDOCGEDOX" IS 'Identificador del documento GEDOX';
   COMMENT ON COLUMN "AXIS"."DELPER_DOCUMENTOS"."FCADUCA" IS 'Fecha de caducidad del documento';
   COMMENT ON COLUMN "AXIS"."DELPER_DOCUMENTOS"."TOBSERVA" IS 'Observaciones';
   COMMENT ON COLUMN "AXIS"."DELPER_DOCUMENTOS"."CUSUALT" IS 'C�digo usuario alta del registro';
   COMMENT ON COLUMN "AXIS"."DELPER_DOCUMENTOS"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."DELPER_DOCUMENTOS"."CUSUARI" IS 'C�digo usuario modificaci�n del registro';
   COMMENT ON COLUMN "AXIS"."DELPER_DOCUMENTOS"."FMOVIMI" IS 'Fecha modificaci�n del registro';
   COMMENT ON TABLE "AXIS"."DELPER_DOCUMENTOS"  IS 'Documentos de la persona';
  GRANT UPDATE ON "AXIS"."DELPER_DOCUMENTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DELPER_DOCUMENTOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DELPER_DOCUMENTOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DELPER_DOCUMENTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DELPER_DOCUMENTOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DELPER_DOCUMENTOS" TO "PROGRAMADORESCSI";
