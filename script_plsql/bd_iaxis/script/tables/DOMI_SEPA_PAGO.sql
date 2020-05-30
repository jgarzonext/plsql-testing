--------------------------------------------------------
--  DDL for Table DOMI_SEPA_PAGO
--------------------------------------------------------

  CREATE TABLE "AXIS"."DOMI_SEPA_PAGO" 
   (	"IDDOMISEPA" NUMBER(8,0), 
	"IDPAGO" NUMBER(8,0), 
	"PMTINFID" VARCHAR2(35 BYTE), 
	"PMTMTD" VARCHAR2(2 BYTE) DEFAULT 'DD', 
	"BTCHBOOKG" VARCHAR2(10 BYTE) DEFAULT 'true', 
	"NBOFTXS" NUMBER(15,0), 
	"CTRLSUM" NUMBER, 
	"SVCLVL_CD_4" VARCHAR2(10 BYTE) DEFAULT 'SEPA', 
	"LCLINSTRM_CD_4" VARCHAR2(35 BYTE) DEFAULT 'CORE', 
	"PMTTPINF_SEQTP_3" VARCHAR2(4 BYTE) DEFAULT 'RCUR', 
	"REQDCOLLTNDT" DATE, 
	"CDTR_NM_3" VARCHAR2(70 BYTE), 
	"PSTLADR_CTRY_4" VARCHAR2(2 BYTE), 
	"ID_IBAN_4" VARCHAR2(34 BYTE), 
	"FININSTNID_BIC_4" VARCHAR2(11 BYTE), 
	"OTHR_ID_6" VARCHAR2(35 BYTE), 
	"SCHMENM_PRTRY_7" VARCHAR2(35 BYTE) DEFAULT 'SEPA'
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DOMI_SEPA_PAGO"."PMTINFID" IS 'Referencia única, asignada por el presentador, para identificar inequívocamente el
bloque de información del pago dentro del mensaje';
   COMMENT ON COLUMN "AXIS"."DOMI_SEPA_PAGO"."PMTMTD" IS 'Método de pago';
   COMMENT ON COLUMN "AXIS"."DOMI_SEPA_PAGO"."BTCHBOOKG" IS 'Indicador de apunte en cuenta';
   COMMENT ON COLUMN "AXIS"."DOMI_SEPA_PAGO"."NBOFTXS" IS 'Número de operaciones';
   COMMENT ON COLUMN "AXIS"."DOMI_SEPA_PAGO"."CTRLSUM" IS 'Sumatorio de los importes recibidos';
   COMMENT ON COLUMN "AXIS"."DOMI_SEPA_PAGO"."SVCLVL_CD_4" IS 'Código del nivel de servicio';
   COMMENT ON COLUMN "AXIS"."DOMI_SEPA_PAGO"."LCLINSTRM_CD_4" IS 'Esquema bajo cuyas reglas ha de procesarse la operación (AT-20).';
   COMMENT ON COLUMN "AXIS"."DOMI_SEPA_PAGO"."PMTTPINF_SEQTP_3" IS 'Identifica el tipo de presentación de los adeudos directos incluidos en un mismo bloque';
   COMMENT ON COLUMN "AXIS"."DOMI_SEPA_PAGO"."REQDCOLLTNDT" IS 'Fecha de cobro - RequestedCollectionDate';
   COMMENT ON COLUMN "AXIS"."DOMI_SEPA_PAGO"."CDTR_NM_3" IS 'Nombre del acreedor';
   COMMENT ON COLUMN "AXIS"."DOMI_SEPA_PAGO"."PSTLADR_CTRY_4" IS 'País del acreedor';
   COMMENT ON COLUMN "AXIS"."DOMI_SEPA_PAGO"."ID_IBAN_4" IS 'Cuenta IBAN del cobrador bancario';
   COMMENT ON COLUMN "AXIS"."DOMI_SEPA_PAGO"."FININSTNID_BIC_4" IS 'Código BIC de la entidad del acreedor';
   COMMENT ON COLUMN "AXIS"."DOMI_SEPA_PAGO"."OTHR_ID_6" IS 'Identificación del acreedor';
   COMMENT ON COLUMN "AXIS"."DOMI_SEPA_PAGO"."SCHMENM_PRTRY_7" IS 'Nombre del esquema de identificación en formato de texto libre';
   COMMENT ON TABLE "AXIS"."DOMI_SEPA_PAGO"  IS 'Tabla domiciliaciones sepa pago';
  GRANT UPDATE ON "AXIS"."DOMI_SEPA_PAGO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DOMI_SEPA_PAGO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DOMI_SEPA_PAGO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DOMI_SEPA_PAGO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DOMI_SEPA_PAGO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DOMI_SEPA_PAGO" TO "PROGRAMADORESCSI";
