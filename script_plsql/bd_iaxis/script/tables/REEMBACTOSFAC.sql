--------------------------------------------------------
--  DDL for Table REEMBACTOSFAC
--------------------------------------------------------

  CREATE TABLE "AXIS"."REEMBACTOSFAC" 
   (	"NREEMB" NUMBER(8,0), 
	"NFACT" NUMBER(8,0), 
	"NLINEA" NUMBER(4,0), 
	"CACTO" VARCHAR2(10 BYTE), 
	"NACTO" NUMBER(4,0), 
	"FACTO" DATE, 
	"ITARCASS" NUMBER, 
	"PREEMB" NUMBER(5,2), 
	"ICASS" NUMBER, 
	"ITOT" NUMBER, 
	"IEXTRA" NUMBER, 
	"IPAGO" NUMBER, 
	"IAHORRO" NUMBER, 
	"CERROR" NUMBER(4,0), 
	"FBAJA" DATE, 
	"FALTA" DATE, 
	"FTRANS" DATE, 
	"CUSUALTA" VARCHAR2(20 BYTE), 
	"CORIGEN" NUMBER(2,0), 
	"NREMESA" NUMBER(10,0), 
	"CTIPO" NUMBER(1,0), 
	"IPAGOCOMP" NUMBER, 
	"FTRANSCOMP" DATE, 
	"NREMESACOMP" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS"  ENABLE ROW MOVEMENT ;

   COMMENT ON COLUMN "AXIS"."REEMBACTOSFAC"."NREEMB" IS 'Nº de reembolso';
   COMMENT ON COLUMN "AXIS"."REEMBACTOSFAC"."NFACT" IS 'Nº de factura interno, por defecto yyyymmxx, donde xx es un contador. Ej. 20080501';
   COMMENT ON COLUMN "AXIS"."REEMBACTOSFAC"."NLINEA" IS 'Nº de línea';
   COMMENT ON COLUMN "AXIS"."REEMBACTOSFAC"."CACTO" IS 'Código de acto médico';
   COMMENT ON COLUMN "AXIS"."REEMBACTOSFAC"."NACTO" IS 'Nº de actos';
   COMMENT ON COLUMN "AXIS"."REEMBACTOSFAC"."FACTO" IS 'Fecha acto';
   COMMENT ON COLUMN "AXIS"."REEMBACTOSFAC"."ITARCASS" IS 'Tarifa CASS. Solo se cumplimenta en el caso de carga de ficheros CASS';
   COMMENT ON COLUMN "AXIS"."REEMBACTOSFAC"."PREEMB" IS 'Percentatge reembossament, exemple 07500 per 75,00 %. Solo se cumplimenta en el caso de carga de ficheros CASS';
   COMMENT ON COLUMN "AXIS"."REEMBACTOSFAC"."ICASS" IS 'Import pagament, exemple 00000001901 per 19,01. Solo se cumplimenta en el caso de carga de ficheros CASS';
   COMMENT ON COLUMN "AXIS"."REEMBACTOSFAC"."ITOT" IS 'Importe total. En el caso de ficheros CASS este corresponde con ITARCASS ';
   COMMENT ON COLUMN "AXIS"."REEMBACTOSFAC"."IEXTRA" IS 'Importe regalo obtenido de actos_producto.impregalo';
   COMMENT ON COLUMN "AXIS"."REEMBACTOSFAC"."IPAGO" IS 'Importe a pagar (aceptado). En el caso de fichero CASS el importe propuesto = itarcass * 0,25';
   COMMENT ON COLUMN "AXIS"."REEMBACTOSFAC"."IAHORRO" IS 'Importe ahorrado. Campo libre para determinados usuarios';
   COMMENT ON COLUMN "AXIS"."REEMBACTOSFAC"."CERROR" IS 'Código de error. Tabla controlsan';
   COMMENT ON COLUMN "AXIS"."REEMBACTOSFAC"."FBAJA" IS 'Fecha de baja';
   COMMENT ON COLUMN "AXIS"."REEMBACTOSFAC"."FALTA" IS 'Fecha alta';
   COMMENT ON COLUMN "AXIS"."REEMBACTOSFAC"."FTRANS" IS 'Fecha generación de transferencia';
   COMMENT ON COLUMN "AXIS"."REEMBACTOSFAC"."CUSUALTA" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."REEMBACTOSFAC"."CORIGEN" IS 'Valor Fijo "Origen": 0- Automático 1- Manual';
   COMMENT ON COLUMN "AXIS"."REEMBACTOSFAC"."NREMESA" IS 'Código de la remesa en que se transfiere';
   COMMENT ON COLUMN "AXIS"."REEMBACTOSFAC"."CTIPO" IS 'V.F. 895. 0 -> Convencionado , 1 -> No Convencionado';
   COMMENT ON COLUMN "AXIS"."REEMBACTOSFAC"."IPAGOCOMP" IS 'Importe complementario';
   COMMENT ON COLUMN "AXIS"."REEMBACTOSFAC"."FTRANSCOMP" IS 'Fecha generación de transferencia del importe complementario';
   COMMENT ON COLUMN "AXIS"."REEMBACTOSFAC"."NREMESACOMP" IS 'Remesa de la transferencia del pago complementario';
  GRANT UPDATE ON "AXIS"."REEMBACTOSFAC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REEMBACTOSFAC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."REEMBACTOSFAC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."REEMBACTOSFAC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REEMBACTOSFAC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."REEMBACTOSFAC" TO "PROGRAMADORESCSI";
