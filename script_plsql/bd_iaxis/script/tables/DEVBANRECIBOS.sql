--------------------------------------------------------
--  DDL for Table DEVBANRECIBOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."DEVBANRECIBOS" 
   (	"SDEVOLU" NUMBER(6,0), 
	"NNUMNIF" VARCHAR2(14 BYTE), 
	"TSUFIJO" VARCHAR2(3 BYTE), 
	"FREMESA" DATE, 
	"CREFERE" VARCHAR2(50 BYTE), 
	"NRECIBO" NUMBER, 
	"TRECNOM" VARCHAR2(40 BYTE), 
	"NRECCCC" VARCHAR2(50 BYTE), 
	"IRECDEV" NUMBER, 
	"CDEVREC" VARCHAR2(6 BYTE), 
	"CREFINT" VARCHAR2(10 BYTE), 
	"CDEVMOT" NUMBER(3,0), 
	"CDEVSIT" NUMBER(2,0), 
	"TPRILIN" VARCHAR2(40 BYTE), 
	"CCOBBAN" NUMBER(3,0), 
	"CTIPBAN" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DEVBANRECIBOS"."SDEVOLU" IS 'Identificador del proceso de carga de devoluciones';
   COMMENT ON COLUMN "AXIS"."DEVBANRECIBOS"."NNUMNIF" IS 'NIF ordenante';
   COMMENT ON COLUMN "AXIS"."DEVBANRECIBOS"."TSUFIJO" IS 'Sufijo ordenante';
   COMMENT ON COLUMN "AXIS"."DEVBANRECIBOS"."FREMESA" IS 'Fecha de cobro del recibo';
   COMMENT ON COLUMN "AXIS"."DEVBANRECIBOS"."CREFERE" IS 'Referencia del registro de adeudo';
   COMMENT ON COLUMN "AXIS"."DEVBANRECIBOS"."NRECIBO" IS 'N�mero de recibo.';
   COMMENT ON COLUMN "AXIS"."DEVBANRECIBOS"."TRECNOM" IS 'Nombre del titular de la domiciliaci�n';
   COMMENT ON COLUMN "AXIS"."DEVBANRECIBOS"."NRECCCC" IS 'CCC de domiciliaci�n';
   COMMENT ON COLUMN "AXIS"."DEVBANRECIBOS"."IRECDEV" IS 'Importe de la devoluci�n';
   COMMENT ON COLUMN "AXIS"."DEVBANRECIBOS"."CDEVREC" IS 'C�digo de devoluci�n (del registro devuelto)';
   COMMENT ON COLUMN "AXIS"."DEVBANRECIBOS"."CREFINT" IS 'C�digo de referencia interna (del registro devuelto)';
   COMMENT ON COLUMN "AXIS"."DEVBANRECIBOS"."CDEVMOT" IS 'Motivo de devoluci�n';
   COMMENT ON COLUMN "AXIS"."DEVBANRECIBOS"."CDEVSIT" IS 'Situaci�n del recibo devuelto';
   COMMENT ON COLUMN "AXIS"."DEVBANRECIBOS"."TPRILIN" IS 'Primer campo del concepto';
   COMMENT ON COLUMN "AXIS"."DEVBANRECIBOS"."CCOBBAN" IS 'Cobrador Bancario';
   COMMENT ON COLUMN "AXIS"."DEVBANRECIBOS"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
  GRANT UPDATE ON "AXIS"."DEVBANRECIBOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DEVBANRECIBOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DEVBANRECIBOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DEVBANRECIBOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DEVBANRECIBOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DEVBANRECIBOS" TO "PROGRAMADORESCSI";
