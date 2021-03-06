--------------------------------------------------------
--  DDL for Table GCA_CONCILIACIONCAB
--------------------------------------------------------

  CREATE TABLE "AXIS"."GCA_CONCILIACIONCAB" 
   (	"SIDCON" NUMBER, 
	"ACON" NUMBER, 
	"MCON" NUMBER, 
	"TDESC" VARCHAR2(150 BYTE), 
	"CSUCURSAL" NUMBER, 
	"NNUMIDEAGE" VARCHAR2(150 BYTE), 
	"CFICHERO" NUMBER, 
	"SPROCES" NUMBER, 
	"CESTADO" NUMBER, 
	"NCODACTA" NUMBER, 
	"CUSUALT" VARCHAR2(150 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(150 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACIONCAB"."SIDCON" IS 'ID DE PROCESO DE CONCILIACI�N';
   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACIONCAB"."ACON" IS 'A�O DE CONCILIACI�N';
   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACIONCAB"."MCON" IS 'MES DE CONCILIACI�N';
   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACIONCAB"."TDESC" IS 'DESCRIPCI�N DEL PROCESO DE CONCILIACI�N';
   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACIONCAB"."CSUCURSAL" IS 'C�DIGO DE SUCURSAL';
   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACIONCAB"."NNUMIDEAGE" IS 'N� DE IDENTIFICACI�N DEL AGENTE QUE ENV�A EL FICHERO';
   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACIONCAB"."CFICHERO" IS 'C�DIGO DE FICHERO DE CONCILIACI�N';
   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACIONCAB"."SPROCES" IS 'N�MERO DEL PROCESO DE CARGA DEL FICHERO DE CONCILIACI�N';
   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACIONCAB"."CESTADO" IS 'C�DIGO DE ESTADO';
   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACIONCAB"."NCODACTA" IS 'C�DIGO DE MODELO DE ACTA DE CONCILIACI�N';
   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACIONCAB"."CUSUALT" IS 'C�DIGO USUARIO DE ALTA';
   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACIONCAB"."FALTA" IS 'FECHA DE ALTA';
   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACIONCAB"."CUSUMOD" IS 'C�DIGO USUARIO MODIFICACI�N';
   COMMENT ON COLUMN "AXIS"."GCA_CONCILIACIONCAB"."FMODIFI" IS 'FECHA MODIFICACI�N';
  GRANT UPDATE ON "AXIS"."GCA_CONCILIACIONCAB" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GCA_CONCILIACIONCAB" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."GCA_CONCILIACIONCAB" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."GCA_CONCILIACIONCAB" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GCA_CONCILIACIONCAB" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."GCA_CONCILIACIONCAB" TO "PROGRAMADORESCSI";
