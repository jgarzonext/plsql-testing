--------------------------------------------------------
--  DDL for Table HIS_CLAUSUGAR
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_CLAUSUGAR" 
   (	"CMODALI" NUMBER(22,0), 
	"CCOLECT" NUMBER(22,0), 
	"CRAMO" NUMBER(22,0), 
	"CTIPSEG" NUMBER(22,0), 
	"CGARANT" NUMBER(22,0), 
	"CACTIVI" NUMBER(22,0), 
	"SCLAPRO" NUMBER(22,0), 
	"CACCION" NUMBER(22,0), 
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

   COMMENT ON COLUMN "AXIS"."HIS_CLAUSUGAR"."CMODALI" IS 'C�digo modalidad';
   COMMENT ON COLUMN "AXIS"."HIS_CLAUSUGAR"."CCOLECT" IS 'C�digo de colectividad';
   COMMENT ON COLUMN "AXIS"."HIS_CLAUSUGAR"."CRAMO" IS 'C�digo ramo';
   COMMENT ON COLUMN "AXIS"."HIS_CLAUSUGAR"."CTIPSEG" IS 'C�digo tipo de seguro';
   COMMENT ON COLUMN "AXIS"."HIS_CLAUSUGAR"."CGARANT" IS 'C�digo de garant�a';
   COMMENT ON COLUMN "AXIS"."HIS_CLAUSUGAR"."CACTIVI" IS 'C�digo actividad del seguro';
   COMMENT ON COLUMN "AXIS"."HIS_CLAUSUGAR"."SCLAPRO" IS 'N�mero';
   COMMENT ON COLUMN "AXIS"."HIS_CLAUSUGAR"."CACCION" IS 'Tipo de acci�n a realizar';
   COMMENT ON COLUMN "AXIS"."HIS_CLAUSUGAR"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_CLAUSUGAR"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_CLAUSUGAR"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_CLAUSUGAR"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON COLUMN "AXIS"."HIS_CLAUSUGAR"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_CLAUSUGAR"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_CLAUSUGAR"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_CLAUSUGAR"  IS 'Hist�rico de la tabla CLAUSUGAR';
  GRANT UPDATE ON "AXIS"."HIS_CLAUSUGAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_CLAUSUGAR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_CLAUSUGAR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_CLAUSUGAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_CLAUSUGAR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_CLAUSUGAR" TO "PROGRAMADORESCSI";