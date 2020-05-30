--------------------------------------------------------
--  DDL for Table DETCARENCIAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."DETCARENCIAS" 
   (	"CSEXO" NUMBER(1,0) DEFAULT 3, 
	"NMESCAR" NUMBER(2,0), 
	"CGARANT" NUMBER(4,0), 
	"CCAREN" NUMBER(6,0), 
	"SPRODUC" NUMBER(6,0), 
	"CACTIVI" NUMBER(4,0), 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
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

   COMMENT ON COLUMN "AXIS"."DETCARENCIAS"."CSEXO" IS 'A que sexo afecta la carencia 1-hombre 2-mujer Nulo-Los dos ( CVALOR: 216 )';
   COMMENT ON COLUMN "AXIS"."DETCARENCIAS"."NMESCAR" IS 'Meses de carencia';
   COMMENT ON COLUMN "AXIS"."DETCARENCIAS"."CGARANT" IS 'Garantia que afeca la carencia';
   COMMENT ON COLUMN "AXIS"."DETCARENCIAS"."CCAREN" IS 'C�digo de carencia';
   COMMENT ON COLUMN "AXIS"."DETCARENCIAS"."SPRODUC" IS 'Producto';
   COMMENT ON COLUMN "AXIS"."DETCARENCIAS"."CACTIVI" IS 'Actividad';
   COMMENT ON COLUMN "AXIS"."DETCARENCIAS"."CRAMO" IS 'Ramo';
   COMMENT ON COLUMN "AXIS"."DETCARENCIAS"."CMODALI" IS 'Modalidad';
   COMMENT ON COLUMN "AXIS"."DETCARENCIAS"."CTIPSEG" IS 'Tipo de seguridad';
   COMMENT ON COLUMN "AXIS"."DETCARENCIAS"."CCOLECT" IS 'Colectivo';
   COMMENT ON COLUMN "AXIS"."DETCARENCIAS"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."DETCARENCIAS"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."DETCARENCIAS"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."DETCARENCIAS"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON TABLE "AXIS"."DETCARENCIAS"  IS 'Carencias asociadas a cada garantia';
  GRANT UPDATE ON "AXIS"."DETCARENCIAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETCARENCIAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DETCARENCIAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DETCARENCIAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETCARENCIAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DETCARENCIAS" TO "PROGRAMADORESCSI";
