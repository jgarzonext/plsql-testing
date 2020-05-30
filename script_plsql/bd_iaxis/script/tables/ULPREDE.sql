--------------------------------------------------------
--  DDL for Table ULPREDE
--------------------------------------------------------

  CREATE TABLE "AXIS"."ULPREDE" 
   (	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"FINICIO" DATE, 
	"NDURACI" NUMBER(6,3), 
	"NPERMAN" NUMBER(6,3), 
	"PREDUC" NUMBER(5,2), 
	"CACTIVI" NUMBER(4,0), 
	"CGARANT" NUMBER(4,0), 
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

   COMMENT ON COLUMN "AXIS"."ULPREDE"."CRAMO" IS 'Ramo del Producto';
   COMMENT ON COLUMN "AXIS"."ULPREDE"."CMODALI" IS 'Modalidad del Producto';
   COMMENT ON COLUMN "AXIS"."ULPREDE"."CTIPSEG" IS 'Tipo del Producto';
   COMMENT ON COLUMN "AXIS"."ULPREDE"."CCOLECT" IS 'Colectivo del Producto';
   COMMENT ON COLUMN "AXIS"."ULPREDE"."FINICIO" IS 'Fecha entra en vigor';
   COMMENT ON COLUMN "AXIS"."ULPREDE"."NDURACI" IS 'Rango Inicial';
   COMMENT ON COLUMN "AXIS"."ULPREDE"."NPERMAN" IS 'Rango Final';
   COMMENT ON COLUMN "AXIS"."ULPREDE"."PREDUC" IS 'Porcentaje de Reducci�n';
   COMMENT ON COLUMN "AXIS"."ULPREDE"."CACTIVI" IS 'Actividad de la p�liza';
   COMMENT ON COLUMN "AXIS"."ULPREDE"."CGARANT" IS 'C�digo de Garant�a';
   COMMENT ON COLUMN "AXIS"."ULPREDE"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."ULPREDE"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."ULPREDE"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."ULPREDE"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON TABLE "AXIS"."ULPREDE"  IS 'Tabla de Porcentajes de reducci�n';
  GRANT UPDATE ON "AXIS"."ULPREDE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ULPREDE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ULPREDE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ULPREDE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ULPREDE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ULPREDE" TO "PROGRAMADORESCSI";