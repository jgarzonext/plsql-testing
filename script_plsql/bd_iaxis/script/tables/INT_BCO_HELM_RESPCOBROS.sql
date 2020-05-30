--------------------------------------------------------
--  DDL for Table INT_BCO_HELM_RESPCOBROS
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_BCO_HELM_RESPCOBROS" 
   (	"SINTERF" NUMBER, 
	"NLINEA" NUMBER, 
	"CTIPOREG" VARCHAR2(200 BYTE), 
	"CNITTITU" VARCHAR2(200 BYTE), 
	"CCODPROD" VARCHAR2(200 BYTE), 
	"CNUMPROC" VARCHAR2(200 BYTE), 
	"CCONSECU" VARCHAR2(200 BYTE), 
	"CNUMECTA" VARCHAR2(200 BYTE), 
	"CCODTRAN" VARCHAR2(200 BYTE), 
	"CVALPRIM" VARCHAR2(200 BYTE), 
	"CTIPCUEN" VARCHAR2(200 BYTE), 
	"CCTARECA" VARCHAR2(200 BYTE), 
	"CFECPROC" VARCHAR2(200 BYTE), 
	"CCODRESP" VARCHAR2(200 BYTE), 
	"CNUMPOLI" VARCHAR2(200 BYTE), 
	"CIDCLIEN" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INT_BCO_HELM_RESPCOBROS"."CTIPOREG" IS 'Tipo de registro';
   COMMENT ON COLUMN "AXIS"."INT_BCO_HELM_RESPCOBROS"."CNITTITU" IS 'Nit del Titular due�o Cta bancaria';
   COMMENT ON COLUMN "AXIS"."INT_BCO_HELM_RESPCOBROS"."CCODPROD" IS 'C�digo Del Producto De La P�liza';
   COMMENT ON COLUMN "AXIS"."INT_BCO_HELM_RESPCOBROS"."CNUMPROC" IS 'N�mero de Proceso';
   COMMENT ON COLUMN "AXIS"."INT_BCO_HELM_RESPCOBROS"."CCONSECU" IS 'Consecutivo de env�o';
   COMMENT ON COLUMN "AXIS"."INT_BCO_HELM_RESPCOBROS"."CNUMECTA" IS 'N�mero de Cuenta Debito';
   COMMENT ON COLUMN "AXIS"."INT_BCO_HELM_RESPCOBROS"."CCODTRAN" IS 'C�digo de Transacci�n ';
   COMMENT ON COLUMN "AXIS"."INT_BCO_HELM_RESPCOBROS"."CVALPRIM" IS 'Vr. Prima';
   COMMENT ON COLUMN "AXIS"."INT_BCO_HELM_RESPCOBROS"."CTIPCUEN" IS 'Tipo Cuenta ';
   COMMENT ON COLUMN "AXIS"."INT_BCO_HELM_RESPCOBROS"."CCTARECA" IS 'N�mero de Cuenta Recaudadora';
   COMMENT ON COLUMN "AXIS"."INT_BCO_HELM_RESPCOBROS"."CFECPROC" IS 'Fecha de proceso';
   COMMENT ON COLUMN "AXIS"."INT_BCO_HELM_RESPCOBROS"."CCODRESP" IS 'C�digo de respuesta';
   COMMENT ON COLUMN "AXIS"."INT_BCO_HELM_RESPCOBROS"."CNUMPOLI" IS 'P�liza  (cuatro d�gitos �nicamente)';
   COMMENT ON COLUMN "AXIS"."INT_BCO_HELM_RESPCOBROS"."CIDCLIEN" IS 'Identificaci�n del cliente';
   COMMENT ON TABLE "AXIS"."INT_BCO_HELM_RESPCOBROS"  IS 'Almacenamiento de las respuestas de los recaudos (cobros) efectuados por el Banco HELM';
  GRANT UPDATE ON "AXIS"."INT_BCO_HELM_RESPCOBROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_BCO_HELM_RESPCOBROS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INT_BCO_HELM_RESPCOBROS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INT_BCO_HELM_RESPCOBROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_BCO_HELM_RESPCOBROS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INT_BCO_HELM_RESPCOBROS" TO "PROGRAMADORESCSI";