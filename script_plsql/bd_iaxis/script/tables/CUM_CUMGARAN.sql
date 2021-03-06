--------------------------------------------------------
--  DDL for Table CUM_CUMGARAN
--------------------------------------------------------

  CREATE TABLE "AXIS"."CUM_CUMGARAN" 
   (	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"CACTIVI" NUMBER(4,0), 
	"CGARANT" NUMBER(4,0), 
	"CCUMULO" NUMBER(6,0), 
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

   COMMENT ON COLUMN "AXIS"."CUM_CUMGARAN"."CRAMO" IS 'Codigo del Ramo';
   COMMENT ON COLUMN "AXIS"."CUM_CUMGARAN"."CMODALI" IS 'Codigo del Modalidad';
   COMMENT ON COLUMN "AXIS"."CUM_CUMGARAN"."CTIPSEG" IS 'Codigo del Tipo de Seguro';
   COMMENT ON COLUMN "AXIS"."CUM_CUMGARAN"."CCOLECT" IS 'Codigo del Colectivo';
   COMMENT ON COLUMN "AXIS"."CUM_CUMGARAN"."CACTIVI" IS 'Codigo de Actividad';
   COMMENT ON COLUMN "AXIS"."CUM_CUMGARAN"."CGARANT" IS 'Codigo de la garant�a';
   COMMENT ON COLUMN "AXIS"."CUM_CUMGARAN"."CCUMULO" IS 'Clave del C�mulo';
   COMMENT ON COLUMN "AXIS"."CUM_CUMGARAN"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."CUM_CUMGARAN"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."CUM_CUMGARAN"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."CUM_CUMGARAN"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON TABLE "AXIS"."CUM_CUMGARAN"  IS 'Rel. de C�mulos con garant�as de Producto';
  GRANT UPDATE ON "AXIS"."CUM_CUMGARAN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CUM_CUMGARAN" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CUM_CUMGARAN" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CUM_CUMGARAN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CUM_CUMGARAN" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CUM_CUMGARAN" TO "PROGRAMADORESCSI";
