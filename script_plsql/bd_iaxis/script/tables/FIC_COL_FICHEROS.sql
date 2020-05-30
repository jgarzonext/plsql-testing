--------------------------------------------------------
--  DDL for Table FIC_COL_FICHEROS
--------------------------------------------------------

  CREATE TABLE "AXIS"."FIC_COL_FICHEROS" 
   (	"TGESTOR" VARCHAR2(20 BYTE), 
	"NTIPREG" NUMBER(4,0), 
	"NCOLFIC" NUMBER(4,0), 
	"TNOMBRE" VARCHAR2(20 BYTE), 
	"TDESCRI" VARCHAR2(100 BYTE), 
	"TTIPDAT" VARCHAR2(1 BYTE), 
	"NLONGIT" NUMBER(4,0), 
	"TOBLIGA" VARCHAR2(1 BYTE), 
	"TCOLBAS" VARCHAR2(100 BYTE), 
	"TVALDEF" VARCHAR2(100 BYTE), 
	"TPRODAT" VARCHAR2(100 BYTE), 
	"TFORCOL" VARCHAR2(100 BYTE), 
	"TCARREL" VARCHAR2(10 BYTE), 
	"TTIPJUS" VARCHAR2(1 BYTE), 
	"TPROVAL" VARCHAR2(100 BYTE), 
	"TOCUCOL" VARCHAR2(1 BYTE), 
	"TVARGLO" VARCHAR2(1 BYTE), 
	"FFECREA" DATE, 
	"FMOVIMI" DATE, 
	"CUSALTA" VARCHAR2(20 BYTE), 
	"CUSUARI" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."FIC_COL_FICHEROS"."TGESTOR" IS 'Codigo del gestor';
   COMMENT ON COLUMN "AXIS"."FIC_COL_FICHEROS"."NTIPREG" IS 'Codigo del tipo de registro';
   COMMENT ON COLUMN "AXIS"."FIC_COL_FICHEROS"."NCOLFIC" IS 'Codigo de la columna del fichero';
   COMMENT ON COLUMN "AXIS"."FIC_COL_FICHEROS"."TNOMBRE" IS 'Nombre de la columna del fichero';
   COMMENT ON COLUMN "AXIS"."FIC_COL_FICHEROS"."TDESCRI" IS 'Descripcion de la columna del fichero o nombre largo';
   COMMENT ON COLUMN "AXIS"."FIC_COL_FICHEROS"."TTIPDAT" IS 'Tipo de dato';
   COMMENT ON COLUMN "AXIS"."FIC_COL_FICHEROS"."NLONGIT" IS 'Longitud de la columna';
   COMMENT ON COLUMN "AXIS"."FIC_COL_FICHEROS"."TOBLIGA" IS 'Obligatoriedad';
   COMMENT ON COLUMN "AXIS"."FIC_COL_FICHEROS"."TCOLBAS" IS 'Columna base';
   COMMENT ON COLUMN "AXIS"."FIC_COL_FICHEROS"."TVALDEF" IS 'Valor por defecto';
   COMMENT ON COLUMN "AXIS"."FIC_COL_FICHEROS"."TPRODAT" IS 'Programa para obtener dato de la columna';
   COMMENT ON COLUMN "AXIS"."FIC_COL_FICHEROS"."TFORCOL" IS 'Formato columna';
   COMMENT ON COLUMN "AXIS"."FIC_COL_FICHEROS"."TCARREL" IS 'Caracter de Relleno';
   COMMENT ON COLUMN "AXIS"."FIC_COL_FICHEROS"."TTIPJUS" IS 'Tipo de Jstificacion (I)zquierda, (D)erecha';
   COMMENT ON COLUMN "AXIS"."FIC_COL_FICHEROS"."TPROVAL" IS 'Programa validacion';
   COMMENT ON COLUMN "AXIS"."FIC_COL_FICHEROS"."TOCUCOL" IS 'Oculta columna?: S/N';
   COMMENT ON COLUMN "AXIS"."FIC_COL_FICHEROS"."TVARGLO" IS 'Definir columna como variable global?: S/N';
   COMMENT ON COLUMN "AXIS"."FIC_COL_FICHEROS"."FFECREA" IS 'Fecha de creacion del registro';
   COMMENT ON COLUMN "AXIS"."FIC_COL_FICHEROS"."CUSALTA" IS 'Usuario que da de alta o crea el registro';
   COMMENT ON COLUMN "AXIS"."FIC_COL_FICHEROS"."CUSUARI" IS 'Usuario que modifica el registro';
   COMMENT ON TABLE "AXIS"."FIC_COL_FICHEROS"  IS 'Columnas de los ficheros';
  GRANT UPDATE ON "AXIS"."FIC_COL_FICHEROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FIC_COL_FICHEROS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."FIC_COL_FICHEROS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."FIC_COL_FICHEROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FIC_COL_FICHEROS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."FIC_COL_FICHEROS" TO "PROGRAMADORESCSI";