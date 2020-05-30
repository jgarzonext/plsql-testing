--------------------------------------------------------
--  DDL for Table PAGOCTACLIENTE
--------------------------------------------------------

  CREATE TABLE "AXIS"."PAGOCTACLIENTE" 
   (	"SPAGO" NUMBER(10,0), 
	"CEMPRES" NUMBER(2,0), 
	"SSEGURO" NUMBER, 
	"SPERSON" NUMBER, 
	"IIMPORTE" NUMBER, 
	"CESTADO" NUMBER(2,0), 
	"FLIQUIDA" DATE, 
	"CUSUARIO" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CFORPAG" NUMBER(1,0), 
	"CTIPOPAG" NUMBER(1,0), 
	"NREMESA" NUMBER(10,0), 
	"FTRANS" DATE, 
	"NNUMLIN" NUMBER(6,0), 
	"CTIPBAN" NUMBER(3,0), 
	"CBANCAR" VARCHAR2(50 BYTE), 
	"SPRODUC" NUMBER(6,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PAGOCTACLIENTE"."SPAGO" IS 'Secuencia del pago. Remesas o remesas_previo';
   COMMENT ON COLUMN "AXIS"."PAGOCTACLIENTE"."CEMPRES" IS 'Empresa';
   COMMENT ON COLUMN "AXIS"."PAGOCTACLIENTE"."SSEGURO" IS 'Poliza';
   COMMENT ON COLUMN "AXIS"."PAGOCTACLIENTE"."SPERSON" IS 'Código de la empresa';
   COMMENT ON COLUMN "AXIS"."PAGOCTACLIENTE"."IIMPORTE" IS 'Importe del pago';
   COMMENT ON COLUMN "AXIS"."PAGOCTACLIENTE"."CESTADO" IS 'Estado del pago. 0:Pendiente, 1:Pagado. VF. 249';
   COMMENT ON COLUMN "AXIS"."PAGOCTACLIENTE"."FLIQUIDA" IS 'Fecha en la que se liquido el pago';
   COMMENT ON COLUMN "AXIS"."PAGOCTACLIENTE"."CUSUARIO" IS 'usuario que realiza de alta del pago';
   COMMENT ON COLUMN "AXIS"."PAGOCTACLIENTE"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."PAGOCTACLIENTE"."CFORPAG" IS 'Forma de pago de la comision. 1.Metalico, 2:Transferencia; Default 2';
   COMMENT ON COLUMN "AXIS"."PAGOCTACLIENTE"."CTIPOPAG" IS 'Tipo de pago. 1: Debe(+) /2: Haber (-)';
   COMMENT ON COLUMN "AXIS"."PAGOCTACLIENTE"."NREMESA" IS 'Si la forma de pago es por transferencia el número de remesa al que pertenece';
   COMMENT ON COLUMN "AXIS"."PAGOCTACLIENTE"."FTRANS" IS 'Si la forma de pago es por transferencia la fecha de la transferencia';
   COMMENT ON COLUMN "AXIS"."PAGOCTACLIENTE"."NNUMLIN" IS 'Numero de línea, referencia de CTACLIENTE';
   COMMENT ON COLUMN "AXIS"."PAGOCTACLIENTE"."CTIPBAN" IS 'TIPO DE CUENTA ( IBAN O CUENTA BANCARIA). [TABLA MAESTRA: TIPOS_CUENTA]';
   COMMENT ON COLUMN "AXIS"."PAGOCTACLIENTE"."CBANCAR" IS 'CUENTA IBAN DEL CLIENTE';
  GRANT UPDATE ON "AXIS"."PAGOCTACLIENTE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PAGOCTACLIENTE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PAGOCTACLIENTE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PAGOCTACLIENTE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PAGOCTACLIENTE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PAGOCTACLIENTE" TO "PROGRAMADORESCSI";