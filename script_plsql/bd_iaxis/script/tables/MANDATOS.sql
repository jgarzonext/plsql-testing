--------------------------------------------------------
--  DDL for Table MANDATOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MANDATOS" 
   (	"SPERSON" NUMBER(10,0), 
	"CNORDBAN" NUMBER, 
	"CTIPBAN" NUMBER(3,0), 
	"CBANCAR" VARCHAR2(50 BYTE), 
	"CCOBBAN" NUMBER(3,0), 
	"CMANDATO" VARCHAR2(35 BYTE), 
	"FFIRMA" DATE, 
	"FUSUALTA" DATE, 
	"CUSUALTA" VARCHAR2(30 BYTE), 
	"CESTADO" NUMBER, 
	"SSEGURO" NUMBER, 
	"FVENCIM" DATE, 
	"TSEGURI" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MANDATOS"."SPERSON" IS 'Secuencia unica de identificacion de una persona';
   COMMENT ON COLUMN "AXIS"."MANDATOS"."CNORDBAN" IS 'C�digo unico consecutivo que identifica la cuenta bancaria de la persona';
   COMMENT ON COLUMN "AXIS"."MANDATOS"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
   COMMENT ON COLUMN "AXIS"."MANDATOS"."CBANCAR" IS 'N�mero de cuenta bancaria. Mismo campo para la cuenta iban o ccc';
   COMMENT ON COLUMN "AXIS"."MANDATOS"."CCOBBAN" IS 'C�digo de cobrador bancario';
   COMMENT ON COLUMN "AXIS"."MANDATOS"."CMANDATO" IS 'El c�digo de referencia de la orden de domiciliaci�nC�digo de cobrador bancario (referencia �nica de mandato)';
   COMMENT ON COLUMN "AXIS"."MANDATOS"."FFIRMA" IS 'Fecha a partir de la cual se firm� el mandato, para p�lizas migradas informar efecto';
   COMMENT ON COLUMN "AXIS"."MANDATOS"."FUSUALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."MANDATOS"."CUSUALTA" IS 'Uusuario que dio el alta del registro';
   COMMENT ON COLUMN "AXIS"."MANDATOS"."CESTADO" IS 'Estado del mandato VALORES=856';
   COMMENT ON COLUMN "AXIS"."MANDATOS"."SSEGURO" IS 'Secuencia del seguro de la p�liza';
   COMMENT ON COLUMN "AXIS"."MANDATOS"."FVENCIM" IS 'Fecha vencimiento';
   COMMENT ON COLUMN "AXIS"."MANDATOS"."TSEGURI" IS 'Codigo de seguridad';
   COMMENT ON TABLE "AXIS"."MANDATOS"  IS 'El mandato firmado por el deudor (pagador) sirve para autorizar, tanto al acreedor a realizar el cobro, como su entidad de cr�dito para atender dichos pagos. El mandato ha de ser emitido en papel y  firmado por el deudor. El mandato debe estar vigente en el momento de la emisi�n del recibo. Caduca si transcurren 36 meses desde el �ltimo cobro. El acreedor debe custodiar el mandato firmado por el deudor por un m�nimo de 14 meses despu�s del �ltimo recibo.';
  GRANT UPDATE ON "AXIS"."MANDATOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MANDATOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MANDATOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MANDATOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MANDATOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MANDATOS" TO "PROGRAMADORESCSI";
