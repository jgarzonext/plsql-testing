--------------------------------------------------------
--  DDL for Table MANDATOS_MASIVA
--------------------------------------------------------

  CREATE TABLE "AXIS"."MANDATOS_MASIVA" 
   (	"NOMINA" NUMBER, 
	"NUMFOLIO" NUMBER, 
	"ACCION" NUMBER, 
	"FECHA" DATE, 
	"USUARIO" VARCHAR2(30 BYTE), 
	"NITEM" NUMBER(4,0), 
	"NCARTA" NUMBER(10,0), 
	"SMANDOC" NUMBER(10,0), 
	"NCARTARES" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MANDATOS_MASIVA"."NOMINA" IS 'Agrupación de mandatos, es un número secuencial determinado por el Iaxis empezando por 1 ';
   COMMENT ON COLUMN "AXIS"."MANDATOS_MASIVA"."NUMFOLIO" IS 'Número de folio (código de mandato de la compañía RSA)';
   COMMENT ON COLUMN "AXIS"."MANDATOS_MASIVA"."ACCION" IS 'Código Acción DETVALORES: 487';
   COMMENT ON COLUMN "AXIS"."MANDATOS_MASIVA"."FECHA" IS 'Fecha de acción';
   COMMENT ON COLUMN "AXIS"."MANDATOS_MASIVA"."USUARIO" IS 'Usuario que realiza la acción';
   COMMENT ON COLUMN "AXIS"."MANDATOS_MASIVA"."NITEM" IS 'Número secuencial de item dentro de una nómina';
   COMMENT ON COLUMN "AXIS"."MANDATOS_MASIVA"."NCARTA" IS 'Número secuencial de carta envio mandatos a banco';
   COMMENT ON COLUMN "AXIS"."MANDATOS_MASIVA"."SMANDOC" IS 'Secuencia generación documento';
   COMMENT ON COLUMN "AXIS"."MANDATOS_MASIVA"."NCARTARES" IS 'Número secuencial de carta resumen';
   COMMENT ON TABLE "AXIS"."MANDATOS_MASIVA"  IS 'Envíos masivos de los mandatos para que sean gestionados por la casa matriz o por el Banco';
  GRANT UPDATE ON "AXIS"."MANDATOS_MASIVA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MANDATOS_MASIVA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MANDATOS_MASIVA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MANDATOS_MASIVA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MANDATOS_MASIVA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MANDATOS_MASIVA" TO "PROGRAMADORESCSI";
