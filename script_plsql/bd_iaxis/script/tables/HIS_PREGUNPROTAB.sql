--------------------------------------------------------
--  DDL for Table HIS_PREGUNPROTAB
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_PREGUNPROTAB" 
   (	"CPREGUN" NUMBER(22,0), 
	"SPRODUC" NUMBER(22,0), 
	"COLUMNA" VARCHAR2(100 BYTE), 
	"TVALIDA" VARCHAR2(100 BYTE), 
	"CTIPDATO" VARCHAR2(250 BYTE), 
	"COBLIGA" NUMBER(22,0), 
	"CREVALORIZA" NUMBER(22,0), 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE, 
	"CUSUHIST" VARCHAR2(20 BYTE), 
	"FCREAHIST" DATE, 
	"ACCION" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_PREGUNPROTAB"."CPREGUN" IS 'C�digo de la pregunta';
   COMMENT ON COLUMN "AXIS"."HIS_PREGUNPROTAB"."SPRODUC" IS 'Identificador del producto';
   COMMENT ON COLUMN "AXIS"."HIS_PREGUNPROTAB"."COLUMNA" IS 'Identificador de la columna';
   COMMENT ON COLUMN "AXIS"."HIS_PREGUNPROTAB"."TVALIDA" IS 'Funci�n de validaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PREGUNPROTAB"."CTIPDATO" IS 'Tipo de DATO Nuevo DETVALOR';
   COMMENT ON COLUMN "AXIS"."HIS_PREGUNPROTAB"."COBLIGA" IS 'Indica si la columna es obligatoria dentro del atributo';
   COMMENT ON COLUMN "AXIS"."HIS_PREGUNPROTAB"."CREVALORIZA" IS 'Revaloriza si/no . Detvalores 108';
   COMMENT ON COLUMN "AXIS"."HIS_PREGUNPROTAB"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PREGUNPROTAB"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PREGUNPROTAB"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PREGUNPROTAB"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PREGUNPROTAB"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PREGUNPROTAB"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PREGUNPROTAB"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_PREGUNPROTAB"  IS 'Hist�rico de la tabla PREGUNPROTAB';
  GRANT UPDATE ON "AXIS"."HIS_PREGUNPROTAB" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PREGUNPROTAB" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_PREGUNPROTAB" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_PREGUNPROTAB" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PREGUNPROTAB" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_PREGUNPROTAB" TO "PROGRAMADORESCSI";
