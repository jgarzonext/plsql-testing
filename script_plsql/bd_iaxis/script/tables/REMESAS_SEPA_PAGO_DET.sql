--------------------------------------------------------
--  DDL for Table REMESAS_SEPA_PAGO_DET
--------------------------------------------------------

  CREATE TABLE "AXIS"."REMESAS_SEPA_PAGO_DET" 
   (	"IDREMESASEPA" NUMBER(8,0), 
	"IDPAGO" NUMBER(8,0), 
	"IDDETALLE" NUMBER(8,0), 
	"INSTRID_ENDTOENDID_4" VARCHAR2(35 BYTE), 
	"AMT_INSTDAMT_4" NUMBER(15,2), 
	"FININSTNID_BIC_5" VARCHAR2(11 BYTE), 
	"CDTR_NM_4" VARCHAR2(70 BYTE), 
	"ID_IBAN_5" VARCHAR2(34 BYTE), 
	"OTHR_ID_6" VARCHAR2(35 BYTE), 
	"RMTINF_USTRD_4" VARCHAR2(140 BYTE), 
	"PMTID_INSTRID_4" VARCHAR2(35 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."REMESAS_SEPA_PAGO_DET"."INSTRID_ENDTOENDID_4" IS 'Identificaci�n de extremo a extremo de la trasnferencia individual';
   COMMENT ON COLUMN "AXIS"."REMESAS_SEPA_PAGO_DET"."AMT_INSTDAMT_4" IS 'Importe ordenado de la transferencia';
   COMMENT ON COLUMN "AXIS"."REMESAS_SEPA_PAGO_DET"."FININSTNID_BIC_5" IS 'BIC de la entidad del beneficiario';
   COMMENT ON COLUMN "AXIS"."REMESAS_SEPA_PAGO_DET"."CDTR_NM_4" IS 'Nombre de la entidad del beneficiario';
   COMMENT ON COLUMN "AXIS"."REMESAS_SEPA_PAGO_DET"."ID_IBAN_5" IS 'IBAN del beneficiario';
   COMMENT ON COLUMN "AXIS"."REMESAS_SEPA_PAGO_DET"."OTHR_ID_6" IS 'Identificador de la cuenta del beneficiario';
   COMMENT ON COLUMN "AXIS"."REMESAS_SEPA_PAGO_DET"."RMTINF_USTRD_4" IS 'Concepto no estructurado';
   COMMENT ON TABLE "AXIS"."REMESAS_SEPA_PAGO_DET"  IS 'Tabla remesas sepa detalle pago';
  GRANT UPDATE ON "AXIS"."REMESAS_SEPA_PAGO_DET" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REMESAS_SEPA_PAGO_DET" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."REMESAS_SEPA_PAGO_DET" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."REMESAS_SEPA_PAGO_DET" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REMESAS_SEPA_PAGO_DET" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."REMESAS_SEPA_PAGO_DET" TO "PROGRAMADORESCSI";