--------------------------------------------------------
--  DDL for Table GCA_CARGACONC
--------------------------------------------------------

  CREATE TABLE "AXIS"."GCA_CARGACONC" 
   (	"CEMPRES" NUMBER, 
	"CFICHERO" NUMBER, 
	"TDESCRIP" VARCHAR2(150 BYTE), 
	"NFILADATOS" NUMBER, 
	"TTABLATEMP" VARCHAR2(150 BYTE), 
	"TSEPARA" VARCHAR2(150 BYTE), 
	"TVALNOM" VARCHAR2(150 BYTE), 
	"NNUMIDEAGE" VARCHAR2(150 BYTE), 
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

   COMMENT ON COLUMN "AXIS"."GCA_CARGACONC"."TDESCRIP" IS 'DESCRIPCI�N DEL FICHERO';
   COMMENT ON COLUMN "AXIS"."GCA_CARGACONC"."NFILADATOS" IS 'N�MERO DE FILA DONDE EMPIEZAN LOS DATOS';
   COMMENT ON COLUMN "AXIS"."GCA_CARGACONC"."TTABLATEMP" IS 'NOMBRE DE LA TABLA TEMPORAL DONDE SE CARGA EL FICHERO';
   COMMENT ON COLUMN "AXIS"."GCA_CARGACONC"."TSEPARA" IS 'SEPARADOR DE COLUMNAS';
   COMMENT ON COLUMN "AXIS"."GCA_CARGACONC"."TVALNOM" IS 'FUNCI�N PARA VALIDAR EL NOMBRE DEL FICHERO';
   COMMENT ON COLUMN "AXIS"."GCA_CARGACONC"."NNUMIDEAGE" IS 'N� DE IDENTIFICACI�N DEL AGENTE QUE ENV�A EL FICHERO';
   COMMENT ON COLUMN "AXIS"."GCA_CARGACONC"."CUSUALT" IS 'C�DIGO USUARIO DE ALTA';
   COMMENT ON COLUMN "AXIS"."GCA_CARGACONC"."FALTA" IS 'FECHA DE ALTA';
   COMMENT ON COLUMN "AXIS"."GCA_CARGACONC"."CUSUMOD" IS 'C�DIGO USUARIO MODIFICACI�N';
   COMMENT ON COLUMN "AXIS"."GCA_CARGACONC"."FMODIFI" IS 'FECHA MODIFICACI�N';
  GRANT UPDATE ON "AXIS"."GCA_CARGACONC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GCA_CARGACONC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."GCA_CARGACONC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."GCA_CARGACONC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GCA_CARGACONC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."GCA_CARGACONC" TO "PROGRAMADORESCSI";
