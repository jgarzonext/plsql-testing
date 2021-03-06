--------------------------------------------------------
--  DDL for Table PER_DOCUMENTOS_LOPD
--------------------------------------------------------

  CREATE TABLE "AXIS"."PER_DOCUMENTOS_LOPD" 
   (	"SPERSON" NUMBER(10,0), 
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

   COMMENT ON COLUMN "AXIS"."PER_DOCUMENTOS_LOPD"."SPERSON" IS 'Secuencia �nica de identificaci�n de una persona';
   COMMENT ON COLUMN "AXIS"."PER_DOCUMENTOS_LOPD"."CAGENTE" IS 'C�digo de agente';
   COMMENT ON COLUMN "AXIS"."PER_DOCUMENTOS_LOPD"."IDDOCGEDOX" IS 'Identificador del documento GEDOX';
   COMMENT ON COLUMN "AXIS"."PER_DOCUMENTOS_LOPD"."FCADUCA" IS 'Fecha de caducidad del documento';
   COMMENT ON COLUMN "AXIS"."PER_DOCUMENTOS_LOPD"."TOBSERVA" IS 'Observaciones';
   COMMENT ON COLUMN "AXIS"."PER_DOCUMENTOS_LOPD"."CUSUALT" IS 'C�digo usuario alta del registro';
   COMMENT ON COLUMN "AXIS"."PER_DOCUMENTOS_LOPD"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."PER_DOCUMENTOS_LOPD"."CUSUARI" IS 'C�digo usuario modificaci�n del registro';
   COMMENT ON COLUMN "AXIS"."PER_DOCUMENTOS_LOPD"."FMOVIMI" IS 'Fecha modificaci�n del registro';
   COMMENT ON TABLE "AXIS"."PER_DOCUMENTOS_LOPD"  IS 'Documentos de la persona';
  GRANT UPDATE ON "AXIS"."PER_DOCUMENTOS_LOPD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PER_DOCUMENTOS_LOPD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PER_DOCUMENTOS_LOPD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PER_DOCUMENTOS_LOPD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PER_DOCUMENTOS_LOPD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PER_DOCUMENTOS_LOPD" TO "PROGRAMADORESCSI";
