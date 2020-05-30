--------------------------------------------------------
--  DDL for Table OBFORMATO
--------------------------------------------------------

  CREATE TABLE "AXIS"."OBFORMATO" 
   (	"CEMPRES" NUMBER(2,0), 
	"CIDCAMPO" VARCHAR2(250 BYTE), 
	"TEXTOINC" VARCHAR2(250 BYTE), 
	"TAMANYO" NUMBER(4,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."OBFORMATO"."CEMPRES" IS 'Código empresa';
   COMMENT ON COLUMN "AXIS"."OBFORMATO"."CIDCAMPO" IS 'Nombre campo a validar';
   COMMENT ON COLUMN "AXIS"."OBFORMATO"."TEXTOINC" IS 'Caracteres no permitidos';
   COMMENT ON COLUMN "AXIS"."OBFORMATO"."TAMANYO" IS 'Longitud permitida del campo';
   COMMENT ON TABLE "AXIS"."OBFORMATO"  IS 'Tabla que contiene la relación entre campos (cidcampo) y sus caracteres no permitidos (textoinc). También se define un tamaño máximo para el valor del campo';
  GRANT UPDATE ON "AXIS"."OBFORMATO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."OBFORMATO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."OBFORMATO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."OBFORMATO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."OBFORMATO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."OBFORMATO" TO "PROGRAMADORESCSI";
