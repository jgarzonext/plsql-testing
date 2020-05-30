--------------------------------------------------------
--  DDL for Table PRODCARTERA
--------------------------------------------------------

  CREATE TABLE "AXIS"."PRODCARTERA" 
   (	"CEMPRES" NUMBER(2,0), 
	"SPRODUC" NUMBER(6,0), 
	"FCARANT" DATE, 
	"FCARPRO" DATE, 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"FGENREN" DATE, 
	"AUTMANUAL" VARCHAR2(1 BYTE), 
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

   COMMENT ON COLUMN "AXIS"."PRODCARTERA"."CEMPRES" IS 'Clave Empresa';
   COMMENT ON COLUMN "AXIS"."PRODCARTERA"."SPRODUC" IS 'Clave Producto';
   COMMENT ON COLUMN "AXIS"."PRODCARTERA"."FCARANT" IS 'Fecha anterior Cartera del producto';
   COMMENT ON COLUMN "AXIS"."PRODCARTERA"."FCARPRO" IS 'Fecha proxima Cartera del producto';
   COMMENT ON COLUMN "AXIS"."PRODCARTERA"."CRAMO" IS 'C�digo de ramo';
   COMMENT ON COLUMN "AXIS"."PRODCARTERA"."CMODALI" IS 'C�digo de modalidad';
   COMMENT ON COLUMN "AXIS"."PRODCARTERA"."CTIPSEG" IS 'C�digo de tipo seguro';
   COMMENT ON COLUMN "AXIS"."PRODCARTERA"."CCOLECT" IS 'C�digo de colectividad';
   COMMENT ON COLUMN "AXIS"."PRODCARTERA"."FGENREN" IS 'Fecha de pr�xima generaci�n de rentas';
   COMMENT ON COLUMN "AXIS"."PRODCARTERA"."AUTMANUAL" IS 'Cartera Autom�tica/Manual';
   COMMENT ON COLUMN "AXIS"."PRODCARTERA"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."PRODCARTERA"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."PRODCARTERA"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."PRODCARTERA"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON TABLE "AXIS"."PRODCARTERA"  IS 'Control de carteras por producto';
  GRANT UPDATE ON "AXIS"."PRODCARTERA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRODCARTERA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PRODCARTERA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PRODCARTERA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRODCARTERA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PRODCARTERA" TO "PROGRAMADORESCSI";