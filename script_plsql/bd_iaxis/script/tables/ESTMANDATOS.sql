--------------------------------------------------------
--  DDL for Table ESTMANDATOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTMANDATOS" 
   (	"SPERSON" NUMBER(10,0), 
	"CNORDBAN" NUMBER, 
	"CTIPBAN" NUMBER(3,0), 
	"CBANCAR" VARCHAR2(50 BYTE), 
	"CCOBBAN" NUMBER(3,0), 
	"CMANDATO" VARCHAR2(35 BYTE), 
	"CESTADO" NUMBER, 
	"FFIRMA" DATE, 
	"FUSUALTA" DATE, 
	"CUSUALTA" VARCHAR2(30 BYTE), 
	"FVENCIM" DATE, 
	"TSEGURI" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESTMANDATOS"."SPERSON" IS 'Secuencia unica de identificacion de una persona';
   COMMENT ON COLUMN "AXIS"."ESTMANDATOS"."CNORDBAN" IS 'Código unico consecutivo que identifica la cuenta bancaria de la persona';
   COMMENT ON COLUMN "AXIS"."ESTMANDATOS"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
   COMMENT ON COLUMN "AXIS"."ESTMANDATOS"."CBANCAR" IS 'Número de cuenta bancaria. Mismo campo para la cuenta iban o ccc';
   COMMENT ON COLUMN "AXIS"."ESTMANDATOS"."CCOBBAN" IS 'Código de cobrador bancario';
   COMMENT ON COLUMN "AXIS"."ESTMANDATOS"."CMANDATO" IS 'El código de referencia de la orden de domiciliaciónCódigo de cobrador bancario (referencia única de mandato)';
   COMMENT ON COLUMN "AXIS"."ESTMANDATOS"."CESTADO" IS 'Estado del mandato VALORES=856';
   COMMENT ON COLUMN "AXIS"."ESTMANDATOS"."FFIRMA" IS 'Fecha a partir de la cual se firmó el mandato, para pólizas migradas informar efecto';
   COMMENT ON COLUMN "AXIS"."ESTMANDATOS"."FUSUALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."ESTMANDATOS"."CUSUALTA" IS 'Uusuario que dio el alta del registro';
   COMMENT ON COLUMN "AXIS"."ESTMANDATOS"."FVENCIM" IS 'Fecha vencimiento';
   COMMENT ON COLUMN "AXIS"."ESTMANDATOS"."TSEGURI" IS 'Codigo de seguridad';
   COMMENT ON TABLE "AXIS"."ESTMANDATOS"  IS 'Tabla temporal de MANDATOS';
  GRANT UPDATE ON "AXIS"."ESTMANDATOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTMANDATOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTMANDATOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTMANDATOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTMANDATOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTMANDATOS" TO "PROGRAMADORESCSI";
