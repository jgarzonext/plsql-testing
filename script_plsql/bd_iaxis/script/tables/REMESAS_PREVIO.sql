--------------------------------------------------------
--  DDL for Table REMESAS_PREVIO
--------------------------------------------------------

  CREATE TABLE "AXIS"."REMESAS_PREVIO" 
   (	"SREMESA" NUMBER(8,0), 
	"CUSUARIO" VARCHAR2(20 BYTE), 
	"CCC" VARCHAR2(50 BYTE), 
	"NRECIBO" NUMBER, 
	"SIDEPAG" NUMBER(8,0), 
	"CABONO" VARCHAR2(50 BYTE), 
	"IIMPORT" NUMBER, 
	"SSEGURO" NUMBER, 
	"SPRODUC" NUMBER(6,0), 
	"FABONO" DATE, 
	"NREMESA" NUMBER(10,0), 
	"FTRANSF" DATE, 
	"CMARCADO" VARCHAR2(2 BYTE) DEFAULT 0, 
	"CIMPRES" VARCHAR2(2 BYTE) DEFAULT 0, 
	"CEMPRES" NUMBER(2,0), 
	"CTIPBAN" NUMBER(3,0), 
	"CTIPBAN_ABONO" NUMBER(3,0), 
	"SPERSON" NUMBER(10,0), 
	"NRENTAS" NUMBER(8,0), 
	"COBLIGA" NUMBER(1,0) DEFAULT 1, 
	"CCOBBAN" NUMBER(3,0), 
	"NREEMB" NUMBER(8,0), 
	"NFACT" NUMBER(8,0), 
	"NLINEA" NUMBER(4,0), 
	"CTIPO" NUMBER(1,0), 
	"FALTA" DATE, 
	"FMODIFI" DATE, 
	"CTIPOPROCESO" NUMBER(4,0), 
	"CATRIBU" NUMBER(3,0), 
	"TFICHERO" VARCHAR2(400 BYTE), 
	"SPAGO" NUMBER(10,0), 
	"DESCRIPCION" VARCHAR2(4000 BYTE), 
	"IIVA" NUMBER, 
	"IICA" NUMBER, 
	"IAVISOSTAB" NUMBER, 
	"IGRAVAMEN" NUMBER, 
	"IRETEFUENTE" NUMBER, 
	"IRETEIVA" NUMBER, 
	"IRETERENTA" NUMBER, 
	"IRETEICA" NUMBER, 
	"CMONEDA" NUMBER(3,0), 
	"FCAMBIO" DATE, 
	"CESTADO" NUMBER, 
	"CSUBESTADO" NUMBER, 
	"SREMESA_ORIG" NUMBER, 
	"CTAPRES" VARCHAR2(50 BYTE), 
	"NSINIES" VARCHAR2(14 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."SREMESA" IS 'SECUENCIA DE LA REMESA';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."CCC" IS 'Cuenta de cargo';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."NRECIBO" IS 'Clave N�mero de recibo';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."SIDEPAG" IS 'C�digo Id. del pago';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."CABONO" IS 'CUENTA DE ABONO';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."IIMPORT" IS 'iMPORTE DE ABONO';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."SSEGURO" IS 'C�digo seguro dentro de AXIS';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."SPRODUC" IS 'C�digo del Producto';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."FABONO" IS 'FECHA DE ABONO';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."NREMESA" IS 'NUMERO DE LA REMESA';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."FTRANSF" IS 'FECHA DE LA TRANSFERENCIA ';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."CMARCADO" IS 'CODIGO DE EJECUCI�N';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."CIMPRES" IS 'C�digo de Impresi�n';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."CEMPRES" IS 'C�digo de empresa';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."CTIPBAN_ABONO" IS 'tipo de formato de cuenta de abono, cabono';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."SPERSON" IS 'Identificador de la persona';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."NRENTAS" IS 'Indica si que hay que realizar la tranf. del item';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."CCOBBAN" IS 'C�digo de cobrador bancario';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."NREEMB" IS 'N� de reembolso';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."NFACT" IS 'N� de factura interno, por defecto yyyymmxx, donde xx es un contador. Ej. 20080501';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."NLINEA" IS 'N� de l�nea (del acto del reembolso)';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."CTIPO" IS 'Indica si el pago es o no complementario (1-Pago Normal; 2-Pago Complementario';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."SPAGO" IS 'Identificador del Pago';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."DESCRIPCION" IS 'descripcion';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."IIVA" IS 'iiva';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."IICA" IS 'iica';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."IAVISOSTAB" IS 'iavisostab';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."IGRAVAMEN" IS 'igravamen';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."IRETEFUENTE" IS 'iretefuente';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."IRETEIVA" IS 'ireteiva';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."IRETERENTA" IS 'ireterenta';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."IRETEICA" IS 'ireteica';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."CMONEDA" IS 'cmoneda';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."FCAMBIO" IS 'fcambio';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."CESTADO" IS 'Estado del pago VF.800057';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."CSUBESTADO" IS 'Subestado del pago VF.800058';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."SREMESA_ORIG" IS 'Sremesa de la tabla de remesas de la que proviene';
   COMMENT ON COLUMN "AXIS"."REMESAS_PREVIO"."CTAPRES" IS 'Id. del pr�stamo';
  GRANT UPDATE ON "AXIS"."REMESAS_PREVIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REMESAS_PREVIO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."REMESAS_PREVIO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."REMESAS_PREVIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REMESAS_PREVIO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."REMESAS_PREVIO" TO "PROGRAMADORESCSI";
