--------------------------------------------------------
--  DDL for Table LOG_ADJUNTO_CORREO
--------------------------------------------------------

  CREATE TABLE "AXIS"."LOG_ADJUNTO_CORREO" 
   (	"SEQLOGCORREO" NUMBER, 
	"IDDOC" NUMBER, 
	"NDOCUMENTO" VARCHAR2(256 BYTE), 
	"NDIRECTORIO" VARCHAR2(256 BYTE), 
	"CMIMETYPE" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."LOG_ADJUNTO_CORREO"."SEQLOGCORREO" IS 'Consecutivo del  log de correo';
   COMMENT ON COLUMN "AXIS"."LOG_ADJUNTO_CORREO"."IDDOC" IS 'Numero consecutivo de identificacion del documento';
   COMMENT ON COLUMN "AXIS"."LOG_ADJUNTO_CORREO"."NDOCUMENTO" IS 'Nombre del documento';
   COMMENT ON COLUMN "AXIS"."LOG_ADJUNTO_CORREO"."NDIRECTORIO" IS 'Nombre del directorio del documento';
   COMMENT ON COLUMN "AXIS"."LOG_ADJUNTO_CORREO"."CMIMETYPE" IS 'Codigo del mime type del documento';
   COMMENT ON TABLE "AXIS"."LOG_ADJUNTO_CORREO"  IS 'Log de documentos adjuntos enviados en un correo electronico';
  GRANT UPDATE ON "AXIS"."LOG_ADJUNTO_CORREO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LOG_ADJUNTO_CORREO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."LOG_ADJUNTO_CORREO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."LOG_ADJUNTO_CORREO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LOG_ADJUNTO_CORREO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."LOG_ADJUNTO_CORREO" TO "PROGRAMADORESCSI";