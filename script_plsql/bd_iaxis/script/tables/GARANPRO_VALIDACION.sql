--------------------------------------------------------
--  DDL for Table GARANPRO_VALIDACION
--------------------------------------------------------

  CREATE TABLE "AXIS"."GARANPRO_VALIDACION" 
   (	"SPRODUC" NUMBER(8,0), 
	"CGARANT" NUMBER(4,0), 
	"CACTIVI" NUMBER(4,0), 
	"NORDVAL" NUMBER(3,0), 
	"TVALGAR" VARCHAR2(2000 BYTE), 
	"CPREPOST" VARCHAR2(4 BYTE), 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."GARANPRO_VALIDACION"."SPRODUC" IS 'C�digo del producto';
   COMMENT ON COLUMN "AXIS"."GARANPRO_VALIDACION"."CGARANT" IS 'C�digo de la garant�a';
   COMMENT ON COLUMN "AXIS"."GARANPRO_VALIDACION"."CACTIVI" IS 'C�digo de la actividad';
   COMMENT ON COLUMN "AXIS"."GARANPRO_VALIDACION"."NORDVAL" IS 'Secuencia en que se realizan las validaciones';
   COMMENT ON COLUMN "AXIS"."GARANPRO_VALIDACION"."TVALGAR" IS 'Funci�n o query din�mica correspondiente a la validaci�n';
   COMMENT ON COLUMN "AXIS"."GARANPRO_VALIDACION"."CPREPOST" IS 'Validaci�n Pre/Post o ambas';
   COMMENT ON COLUMN "AXIS"."GARANPRO_VALIDACION"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."GARANPRO_VALIDACION"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."GARANPRO_VALIDACION"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."GARANPRO_VALIDACION"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON TABLE "AXIS"."GARANPRO_VALIDACION"  IS 'Tabla en la que se establecen qu� validaciones (funci�n, query...) se han de realizar durante el proceso de contrataci�n para un combinaci�n de producto/actividad/garant�a dada';
  GRANT UPDATE ON "AXIS"."GARANPRO_VALIDACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GARANPRO_VALIDACION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."GARANPRO_VALIDACION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."GARANPRO_VALIDACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GARANPRO_VALIDACION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."GARANPRO_VALIDACION" TO "PROGRAMADORESCSI";
