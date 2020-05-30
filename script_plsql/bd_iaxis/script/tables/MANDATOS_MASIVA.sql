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

   COMMENT ON COLUMN "AXIS"."MANDATOS_MASIVA"."NOMINA" IS 'Agrupaci�n de mandatos, es un n�mero secuencial determinado por el Iaxis empezando por 1 ';
   COMMENT ON COLUMN "AXIS"."MANDATOS_MASIVA"."NUMFOLIO" IS 'N�mero de folio (c�digo de mandato de la compa��a RSA)';
   COMMENT ON COLUMN "AXIS"."MANDATOS_MASIVA"."ACCION" IS 'C�digo Acci�n DETVALORES: 487';
   COMMENT ON COLUMN "AXIS"."MANDATOS_MASIVA"."FECHA" IS 'Fecha de acci�n';
   COMMENT ON COLUMN "AXIS"."MANDATOS_MASIVA"."USUARIO" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."MANDATOS_MASIVA"."NITEM" IS 'N�mero secuencial de item dentro de una n�mina';
   COMMENT ON COLUMN "AXIS"."MANDATOS_MASIVA"."NCARTA" IS 'N�mero secuencial de carta envio mandatos a banco';
   COMMENT ON COLUMN "AXIS"."MANDATOS_MASIVA"."SMANDOC" IS 'Secuencia generaci�n documento';
   COMMENT ON COLUMN "AXIS"."MANDATOS_MASIVA"."NCARTARES" IS 'N�mero secuencial de carta resumen';
   COMMENT ON TABLE "AXIS"."MANDATOS_MASIVA"  IS 'Env�os masivos de los mandatos para que sean gestionados por la casa matriz o por el Banco';
  GRANT UPDATE ON "AXIS"."MANDATOS_MASIVA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MANDATOS_MASIVA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MANDATOS_MASIVA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MANDATOS_MASIVA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MANDATOS_MASIVA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MANDATOS_MASIVA" TO "PROGRAMADORESCSI";
