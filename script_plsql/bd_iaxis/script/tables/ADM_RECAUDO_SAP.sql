--------------------------------------------------------
--  DDL for Table ADM_RECAUDO_SAP
--------------------------------------------------------

  CREATE TABLE "AXIS"."ADM_RECAUDO_SAP" 
   (	"NPAGO" VARCHAR2(150 BYTE), 
	"NLINEA" NUMBER, 
	"CTIPO" VARCHAR2(10 BYTE), 
	"FPAGO" DATE, 
	"CMONEDA" VARCHAR2(10 BYTE), 
	"CMEDIO" VARCHAR2(150 BYTE), 
	"NPAGOSAP" VARCHAR2(150 BYTE), 
	"CUSUPAG" VARCHAR2(150 BYTE), 
	"CINDICAF" NUMBER(1,0), 
	"CSUCURSAL" VARCHAR2(1000 BYTE), 
	"NDOCSAP" VARCHAR2(150 BYTE), 
	"ITRM" NUMBER, 
	"IVALOR" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ADM_RECAUDO_SAP"."NPAGO" IS 'Numero de pago - Recibo';
   COMMENT ON COLUMN "AXIS"."ADM_RECAUDO_SAP"."CTIPO" IS 'Tipo recaudo';
   COMMENT ON COLUMN "AXIS"."ADM_RECAUDO_SAP"."FPAGO" IS 'Fecha pago';
   COMMENT ON COLUMN "AXIS"."ADM_RECAUDO_SAP"."CMONEDA" IS 'Moneda';
   COMMENT ON COLUMN "AXIS"."ADM_RECAUDO_SAP"."CMEDIO" IS 'Medio recaudo';
   COMMENT ON COLUMN "AXIS"."ADM_RECAUDO_SAP"."NPAGOSAP" IS 'Numero de Recibo de Caja de SAP';
   COMMENT ON COLUMN "AXIS"."ADM_RECAUDO_SAP"."CUSUPAG" IS 'Usuario de Recaudo';
   COMMENT ON COLUMN "AXIS"."ADM_RECAUDO_SAP"."CINDICAF" IS ' Indicador Recaudo Financiaci�n';
   COMMENT ON COLUMN "AXIS"."ADM_RECAUDO_SAP"."CSUCURSAL" IS 'Sucursal de Recaudo';
   COMMENT ON COLUMN "AXIS"."ADM_RECAUDO_SAP"."NDOCSAP" IS 'Numero de Documento de SAP';
   COMMENT ON COLUMN "AXIS"."ADM_RECAUDO_SAP"."ITRM" IS 'TRM de recaudo';
   COMMENT ON COLUMN "AXIS"."ADM_RECAUDO_SAP"."IVALOR" IS 'Valor pagado';
  GRANT DELETE ON "AXIS"."ADM_RECAUDO_SAP" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ADM_RECAUDO_SAP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ADM_RECAUDO_SAP" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."ADM_RECAUDO_SAP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ADM_RECAUDO_SAP" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ADM_RECAUDO_SAP" TO "PROGRAMADORESCSI";