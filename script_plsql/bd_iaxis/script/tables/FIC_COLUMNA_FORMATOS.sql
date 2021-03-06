--------------------------------------------------------
--  DDL for Table FIC_COLUMNA_FORMATOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."FIC_COLUMNA_FORMATOS" 
   (	"TGESTOR" VARCHAR2(20 BYTE), 
	"TFORMAT" VARCHAR2(20 BYTE), 
	"CCOFORM" NUMBER(4,0), 
	"TNOMBRE" VARCHAR2(100 BYTE), 
	"TTIPDAT" VARCHAR2(1 BYTE), 
	"NTAMANO" NUMBER(4,0), 
	"TOBLIGA" VARCHAR2(1 BYTE), 
	"TFORMCA" VARCHAR2(100 BYTE), 
	"FFECREA" DATE, 
	"FMOVIMI" DATE, 
	"CUSALTA" VARCHAR2(20 BYTE), 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"TBLQDAT" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."FIC_COLUMNA_FORMATOS"."TGESTOR" IS 'c�digo del gestor';
   COMMENT ON COLUMN "AXIS"."FIC_COLUMNA_FORMATOS"."TFORMAT" IS 'c�digo del formato';
   COMMENT ON COLUMN "AXIS"."FIC_COLUMNA_FORMATOS"."CCOFORM" IS 'c�digo de la columna';
   COMMENT ON COLUMN "AXIS"."FIC_COLUMNA_FORMATOS"."TNOMBRE" IS 'nombre de la columna';
   COMMENT ON COLUMN "AXIS"."FIC_COLUMNA_FORMATOS"."TTIPDAT" IS 'tipo de dato de la columna';
   COMMENT ON COLUMN "AXIS"."FIC_COLUMNA_FORMATOS"."NTAMANO" IS 'longitud de la columna';
   COMMENT ON COLUMN "AXIS"."FIC_COLUMNA_FORMATOS"."TOBLIGA" IS 'obligatoria u opcional';
   COMMENT ON COLUMN "AXIS"."FIC_COLUMNA_FORMATOS"."TFORMCA" IS 'formato a aplicar a la columna';
   COMMENT ON COLUMN "AXIS"."FIC_COLUMNA_FORMATOS"."FFECREA" IS 'fecha en que se cre� la columna';
   COMMENT ON COLUMN "AXIS"."FIC_COLUMNA_FORMATOS"."FMOVIMI" IS 'fecha de la �ltima actualizaci�n a la columna';
   COMMENT ON COLUMN "AXIS"."FIC_COLUMNA_FORMATOS"."CUSALTA" IS 'usuario que cre� la columna';
   COMMENT ON COLUMN "AXIS"."FIC_COLUMNA_FORMATOS"."CUSUARI" IS 'usuario que modifico por �ltima vez la columna';
   COMMENT ON COLUMN "AXIS"."FIC_COLUMNA_FORMATOS"."TBLQDAT" IS 'codigo del bloque de dato o unidad de captura';
   COMMENT ON TABLE "AXIS"."FIC_COLUMNA_FORMATOS"  IS 'Esta tabla permite configurar las columnas del formato o estructura';
  GRANT UPDATE ON "AXIS"."FIC_COLUMNA_FORMATOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FIC_COLUMNA_FORMATOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."FIC_COLUMNA_FORMATOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."FIC_COLUMNA_FORMATOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FIC_COLUMNA_FORMATOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."FIC_COLUMNA_FORMATOS" TO "PROGRAMADORESCSI";
