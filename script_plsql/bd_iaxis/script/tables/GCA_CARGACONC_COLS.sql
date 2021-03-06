--------------------------------------------------------
--  DDL for Table GCA_CARGACONC_COLS
--------------------------------------------------------

  CREATE TABLE "AXIS"."GCA_CARGACONC_COLS" 
   (	"CEMPRES" NUMBER, 
	"CFICHERO" NUMBER, 
	"NCOL" NUMBER, 
	"TNOMCOL" VARCHAR2(150 BYTE), 
	"TDESCCOL" VARCHAR2(150 BYTE), 
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

   COMMENT ON COLUMN "AXIS"."GCA_CARGACONC_COLS"."CFICHERO" IS 'C�DIGO DEL FICHERO';
   COMMENT ON COLUMN "AXIS"."GCA_CARGACONC_COLS"."NCOL" IS 'N�MERO DE ORDEN COLUMNA';
   COMMENT ON COLUMN "AXIS"."GCA_CARGACONC_COLS"."TNOMCOL" IS 'NOMBRE DE LA COLUMNA';
   COMMENT ON COLUMN "AXIS"."GCA_CARGACONC_COLS"."TDESCCOL" IS 'DESCRIPCI�N DE LA COLUMNA';
   COMMENT ON COLUMN "AXIS"."GCA_CARGACONC_COLS"."CUSUALT" IS 'C�DIGO USUARIO DE ALTA';
   COMMENT ON COLUMN "AXIS"."GCA_CARGACONC_COLS"."FALTA" IS 'FECHA DE ALTA';
   COMMENT ON COLUMN "AXIS"."GCA_CARGACONC_COLS"."CUSUMOD" IS 'C�DIGO USUARIO MODIFICACI�N';
   COMMENT ON COLUMN "AXIS"."GCA_CARGACONC_COLS"."FMODIFI" IS 'FECHA MODIFICACI�N';
  GRANT UPDATE ON "AXIS"."GCA_CARGACONC_COLS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GCA_CARGACONC_COLS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."GCA_CARGACONC_COLS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."GCA_CARGACONC_COLS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GCA_CARGACONC_COLS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."GCA_CARGACONC_COLS" TO "PROGRAMADORESCSI";
