--------------------------------------------------------
--  DDL for Table HIS_TITULOPRO
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_TITULOPRO" 
   (	"CRAMO" NUMBER(22,0), 
	"CMODALI" NUMBER(22,0), 
	"CTIPSEG" NUMBER(22,0), 
	"CCOLECT" NUMBER(22,0), 
	"CIDIOMA" NUMBER(22,0), 
	"TTITULO" VARCHAR2(40 BYTE), 
	"TROTULO" VARCHAR2(15 BYTE), 
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

   COMMENT ON COLUMN "AXIS"."HIS_TITULOPRO"."CRAMO" IS 'C�digo ramo';
   COMMENT ON COLUMN "AXIS"."HIS_TITULOPRO"."CMODALI" IS 'C�digo modalidad';
   COMMENT ON COLUMN "AXIS"."HIS_TITULOPRO"."CTIPSEG" IS 'C�digo tipo de seguro';
   COMMENT ON COLUMN "AXIS"."HIS_TITULOPRO"."CCOLECT" IS 'C�digo de colectividad';
   COMMENT ON COLUMN "AXIS"."HIS_TITULOPRO"."CIDIOMA" IS 'C�digo de Idioma';
   COMMENT ON COLUMN "AXIS"."HIS_TITULOPRO"."TTITULO" IS 'Titulo del producto';
   COMMENT ON COLUMN "AXIS"."HIS_TITULOPRO"."TROTULO" IS 'Abreviaci�n del t�tulo';
   COMMENT ON COLUMN "AXIS"."HIS_TITULOPRO"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_TITULOPRO"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_TITULOPRO"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_TITULOPRO"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON COLUMN "AXIS"."HIS_TITULOPRO"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_TITULOPRO"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_TITULOPRO"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_TITULOPRO"  IS 'Hist�rico de la tabla TITULOPRO';
  GRANT UPDATE ON "AXIS"."HIS_TITULOPRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_TITULOPRO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_TITULOPRO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_TITULOPRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_TITULOPRO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_TITULOPRO" TO "PROGRAMADORESCSI";
