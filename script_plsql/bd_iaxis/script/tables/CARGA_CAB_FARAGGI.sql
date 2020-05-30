--------------------------------------------------------
--  DDL for Table CARGA_CAB_FARAGGI
--------------------------------------------------------

  CREATE TABLE "AXIS"."CARGA_CAB_FARAGGI" 
   (	"SDENUNC" NUMBER(10,0), 
	"SFARAGI" NUMBER(10,0), 
	"CCODEST" NUMBER(1,0), 
	"NPOLIZA" NUMBER, 
	"NCERTIF" NUMBER, 
	"NRUTASE" NUMBER(8,0), 
	"FSINIES" DATE, 
	"FNOTIFI" DATE, 
	"NRUTBEN" NUMBER(8,0), 
	"FPAGO" DATE, 
	"SFRGREL" NUMBER(10,0), 
	"CESTPAG" NUMBER(1,0), 
	"CRECHAZ" NUMBER(4,0), 
	"CTIPPAG" NUMBER(1,0), 
	"CFORPAG" NUMBER(1,0), 
	"CBANCO" NUMBER(3,0), 
	"CCUENTA" NUMBER(17,0), 
	"TOBSERV" VARCHAR2(2000 BYTE), 
	"SCARGA" NUMBER, 
	"FALTA" DATE, 
	"SSEGURO" NUMBER, 
	"SPRODUC" NUMBER, 
	"SPERSON" NUMBER, 
	"SBENEFI" NUMBER, 
	"CTIPDES" NUMBER, 
	"CTIPBAN" NUMBER, 
	"CBANCAR" VARCHAR2(50 BYTE), 
	"SPROCES" NUMBER, 
	"FPROCES" DATE, 
	"NSINIES" VARCHAR2(14 BYTE), 
	"NLINEA" NUMBER(9,0), 
	"TIPO_OPER" NUMBER(1,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."SDENUNC" IS 'N�mero de denuncia';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."SFARAGI" IS 'N�mero de folio interno Faraggi';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."CCODEST" IS 'C�digo de estado de la denuncia 0 - Pendiente liquidaci�n 1 - Liquidada';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."NPOLIZA" IS 'N�mero de p�liza';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."NCERTIF" IS 'N�mero de certificado';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."NRUTASE" IS 'RUT del asegurado';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."FSINIES" IS 'Fecha de ocurrencia';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."FNOTIFI" IS 'Fecha de presentaci�n';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."NRUTBEN" IS 'RUT del beneficiario';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."FPAGO" IS 'Fecha de pago';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."SFRGREL" IS 'N�mero interno relacionado';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."CESTPAG" IS 'Estado del pago';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."CRECHAZ" IS 'Causa de rechazo del siniestro';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."CTIPPAG" IS 'Tipo de pago';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."CFORPAG" IS 'Forma de pago';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."CBANCO" IS 'Banco';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."CCUENTA" IS 'Cuenta bancaria';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."TOBSERV" IS 'Observaciones';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."SCARGA" IS 'Identificador del proceso de carga';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."SSEGURO" IS 'C�digo de la p�liza';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."SPRODUC" IS 'Producto de la p�liza';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."SPERSON" IS 'Identificador del asegurado';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."SBENEFI" IS 'Identificador del beneficiario';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."CTIPDES" IS 'Tipo de destinatario';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."CTIPBAN" IS 'C�digo de tipo de banco';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."CBANCAR" IS 'C�digo de cuenta bancaria';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."SPROCES" IS 'Identificador del proceso en el que se trata el registro';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."FPROCES" IS 'Fecha en que se trata el registro';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."NSINIES" IS 'Numero de siniestro';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."NLINEA" IS 'Numero de linea de carga';
   COMMENT ON COLUMN "AXIS"."CARGA_CAB_FARAGGI"."TIPO_OPER" IS 'Tipo de operaci�n de carga';
   COMMENT ON TABLE "AXIS"."CARGA_CAB_FARAGGI"  IS 'Tabla de carga de FARAGGi - Detalle de la cabecera';
  GRANT UPDATE ON "AXIS"."CARGA_CAB_FARAGGI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CARGA_CAB_FARAGGI" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CARGA_CAB_FARAGGI" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CARGA_CAB_FARAGGI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CARGA_CAB_FARAGGI" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CARGA_CAB_FARAGGI" TO "PROGRAMADORESCSI";