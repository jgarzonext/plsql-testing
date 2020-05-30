--------------------------------------------------------
--  DDL for Table HIS_GARANPRO_VALIDACION
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_GARANPRO_VALIDACION" 
   (	"SPRODUC" NUMBER(22,0), 
	"CGARANT" NUMBER(22,0), 
	"CACTIVI" NUMBER(22,0), 
	"NORDVAL" NUMBER(22,0), 
	"TVALGAR" VARCHAR2(2000 BYTE), 
	"CPREPOST" VARCHAR2(4 BYTE), 
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

   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_VALIDACION"."SPRODUC" IS 'C�digo del producto';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_VALIDACION"."CGARANT" IS 'C�digo de la garant�a';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_VALIDACION"."CACTIVI" IS 'C�digo de la actividad';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_VALIDACION"."NORDVAL" IS 'Secuencia en que se realizan las validaciones';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_VALIDACION"."TVALGAR" IS 'Funci�n o query din�mica correspondiente a la validaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_VALIDACION"."CPREPOST" IS 'Validaci�n Pre/Post o ambas';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_VALIDACION"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_VALIDACION"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_VALIDACION"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_VALIDACION"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_VALIDACION"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_VALIDACION"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_VALIDACION"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_GARANPRO_VALIDACION"  IS 'Hist�rico de la tabla GARANPRO_VALIDACION';
  GRANT UPDATE ON "AXIS"."HIS_GARANPRO_VALIDACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_GARANPRO_VALIDACION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_GARANPRO_VALIDACION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_GARANPRO_VALIDACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_GARANPRO_VALIDACION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_GARANPRO_VALIDACION" TO "PROGRAMADORESCSI";
