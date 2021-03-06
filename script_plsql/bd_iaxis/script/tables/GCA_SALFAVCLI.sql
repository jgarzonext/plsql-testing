--------------------------------------------------------
--  DDL for Table GCA_SALFAVCLI
--------------------------------------------------------

  CREATE TABLE "AXIS"."GCA_SALFAVCLI" 
   (	"SGSFAVCLI" NUMBER, 
	"NNUMIDECLI" VARCHAR2(150 BYTE), 
	"TNOMCLI" VARCHAR2(150 BYTE), 
	"NDOCSAP" NUMBER, 
	"FDOC" DATE, 
	"FCONTAB" DATE, 
	"CSUCURSAL" NUMBER, 
	"NNUMIDEAGE" VARCHAR2(150 BYTE), 
	"TNOMAGE" VARCHAR2(150 BYTE), 
	"NPOLIZA" NUMBER, 
	"NCERTIF" VARCHAR2(150 BYTE), 
	"NRECIBO" NUMBER, 
	"IMOVIMI_MONCIA" NUMBER, 
	"SPROCES" NUMBER, 
	"CESTADO" NUMBER, 
	"CGESTION" NUMBER, 
	"TINCONSISTENCIA" VARCHAR2(150 BYTE), 
	"CUSUALT" VARCHAR2(150 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(150 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."GCA_SALFAVCLI"."SGSFAVCLI" IS 'ID DE GESTI�N SALDO A FAVOR DEL CLIENTE';
   COMMENT ON COLUMN "AXIS"."GCA_SALFAVCLI"."NNUMIDECLI" IS 'N�MERO DE IDENTIFICACI�N DEL CLIENTE';
   COMMENT ON COLUMN "AXIS"."GCA_SALFAVCLI"."TNOMCLI" IS 'NOMBRE DEL CLIENTE';
   COMMENT ON COLUMN "AXIS"."GCA_SALFAVCLI"."NDOCSAP" IS 'N� DE DOCUMENTO SAP';
   COMMENT ON COLUMN "AXIS"."GCA_SALFAVCLI"."FDOC" IS 'FECHA DOCUMENTO';
   COMMENT ON COLUMN "AXIS"."GCA_SALFAVCLI"."FCONTAB" IS 'FECHA CONTABLE';
   COMMENT ON COLUMN "AXIS"."GCA_SALFAVCLI"."CSUCURSAL" IS 'C�DIGO DE SUCURSAL';
   COMMENT ON COLUMN "AXIS"."GCA_SALFAVCLI"."NNUMIDEAGE" IS 'N�MERO DE IDENTIFICACI�N DEL AGENTE';
   COMMENT ON COLUMN "AXIS"."GCA_SALFAVCLI"."TNOMAGE" IS 'NOMBRE DEL AGENTE';
   COMMENT ON COLUMN "AXIS"."GCA_SALFAVCLI"."NPOLIZA" IS 'N�MERO DE P�LIZA';
   COMMENT ON COLUMN "AXIS"."GCA_SALFAVCLI"."NCERTIF" IS 'N�MERO DE CERTIFICADO';
   COMMENT ON COLUMN "AXIS"."GCA_SALFAVCLI"."NRECIBO" IS 'N�MERO DE RECIBO';
   COMMENT ON COLUMN "AXIS"."GCA_SALFAVCLI"."IMOVIMI_MONCIA" IS 'IMPORTE DEL MOVIMIENTO EN LA MONEDA DE LA COMPA��A';
   COMMENT ON COLUMN "AXIS"."GCA_SALFAVCLI"."SPROCES" IS 'ID. PROCESO DE CARGA';
   COMMENT ON COLUMN "AXIS"."GCA_SALFAVCLI"."CESTADO" IS 'ESTADO';
   COMMENT ON COLUMN "AXIS"."GCA_SALFAVCLI"."CGESTION" IS 'MARCA PARA GESTI�N';
   COMMENT ON COLUMN "AXIS"."GCA_SALFAVCLI"."TINCONSISTENCIA" IS 'ORIGEN DE LA INCONSISTENCIA';
   COMMENT ON COLUMN "AXIS"."GCA_SALFAVCLI"."CUSUALT" IS 'C�DIGO USUARIO DE ALTA';
   COMMENT ON COLUMN "AXIS"."GCA_SALFAVCLI"."FALTA" IS 'FECHA DE ALTA';
   COMMENT ON COLUMN "AXIS"."GCA_SALFAVCLI"."CUSUMOD" IS 'C�DIGO USUARIO MODIFICACI�N';
   COMMENT ON COLUMN "AXIS"."GCA_SALFAVCLI"."FMODIFI" IS 'FECHA MODIFICACI�N';
  GRANT UPDATE ON "AXIS"."GCA_SALFAVCLI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GCA_SALFAVCLI" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."GCA_SALFAVCLI" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."GCA_SALFAVCLI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GCA_SALFAVCLI" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."GCA_SALFAVCLI" TO "PROGRAMADORESCSI";
