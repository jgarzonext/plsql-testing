--------------------------------------------------------
--  DDL for Table FIC_FORMATOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."FIC_FORMATOS" 
   (	"TGESTOR" VARCHAR2(20 BYTE), 
	"TFORMAT" VARCHAR2(20 BYTE), 
	"TNOMBRE" VARCHAR2(100 BYTE), 
	"TDOCDEF" VARCHAR2(100 BYTE), 
	"TTIPOGE" VARCHAR2(1 BYTE), 
	"TFUNLLE" VARCHAR2(100 BYTE), 
	"NNUBLDA" NUMBER(4,0), 
	"NNUCOFO" NUMBER(4,0), 
	"TINDENC" VARCHAR2(1 BYTE), 
	"FFECREA" DATE, 
	"FMOVIMI" DATE, 
	"CUSALTA" VARCHAR2(100 BYTE), 
	"CUSUARI" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."FIC_FORMATOS"."TGESTOR" IS 'código del gestor';
   COMMENT ON COLUMN "AXIS"."FIC_FORMATOS"."TFORMAT" IS 'código del formato';
   COMMENT ON COLUMN "AXIS"."FIC_FORMATOS"."TNOMBRE" IS 'nombre del formato';
   COMMENT ON COLUMN "AXIS"."FIC_FORMATOS"."TDOCDEF" IS 'documento que define la estructura del formato';
   COMMENT ON COLUMN "AXIS"."FIC_FORMATOS"."TTIPOGE" IS 'si es un formato para generar de forma automática o es un formato para importación de datos por parte del usuario';
   COMMENT ON COLUMN "AXIS"."FIC_FORMATOS"."TFUNLLE" IS 'especifica la función que será aplicada para llenar los datos del formato, sólo aplica si la generación es automática';
   COMMENT ON COLUMN "AXIS"."FIC_FORMATOS"."NNUBLDA" IS 'numero de bloque de datos';
   COMMENT ON COLUMN "AXIS"."FIC_FORMATOS"."NNUCOFO" IS 'Numero de columnas del formato';
   COMMENT ON COLUMN "AXIS"."FIC_FORMATOS"."TINDENC" IS 'Indica forma escritura del encabezado de columnas.  S, genera titulo de columnas del formato por cada bloque de datos, N genera un solo titulo de columnas a nivel del formato';
   COMMENT ON COLUMN "AXIS"."FIC_FORMATOS"."FFECREA" IS 'fecha de creación del bloque de datos';
   COMMENT ON COLUMN "AXIS"."FIC_FORMATOS"."FMOVIMI" IS 'fecha de la última actualización del bloque de datos';
   COMMENT ON COLUMN "AXIS"."FIC_FORMATOS"."CUSALTA" IS 'usuario que creó el bloque de datos.';
   COMMENT ON COLUMN "AXIS"."FIC_FORMATOS"."CUSUARI" IS 'usuario que modificó el bloque de datos por última vez';
   COMMENT ON TABLE "AXIS"."FIC_FORMATOS"  IS 'Esta tabla permite definir el encabezado de cada uno de los formatos o estructuras con los que se va a trabajar';
  GRANT UPDATE ON "AXIS"."FIC_FORMATOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FIC_FORMATOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."FIC_FORMATOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."FIC_FORMATOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FIC_FORMATOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."FIC_FORMATOS" TO "PROGRAMADORESCSI";
