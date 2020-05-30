--------------------------------------------------------
--  DDL for Table CNVPRODUCTOS_EXT
--------------------------------------------------------

  CREATE TABLE "AXIS"."CNVPRODUCTOS_EXT" 
   (	"SPRODUC" NUMBER(6,0), 
	"CNV_SPR" VARCHAR2(20 BYTE), 
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

   COMMENT ON COLUMN "AXIS"."CNVPRODUCTOS_EXT"."SPRODUC" IS 'Identificador Axis del producto';
   COMMENT ON COLUMN "AXIS"."CNVPRODUCTOS_EXT"."CNV_SPR" IS 'Identificador del cliente para el producto en contabilidad';
   COMMENT ON COLUMN "AXIS"."CNVPRODUCTOS_EXT"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."CNVPRODUCTOS_EXT"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."CNVPRODUCTOS_EXT"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."CNVPRODUCTOS_EXT"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON TABLE "AXIS"."CNVPRODUCTOS_EXT"  IS 'Tabla de convivéncia de los productos';
  GRANT DELETE ON "AXIS"."CNVPRODUCTOS_EXT" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."CNVPRODUCTOS_EXT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CNVPRODUCTOS_EXT" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CNVPRODUCTOS_EXT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CNVPRODUCTOS_EXT" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CNVPRODUCTOS_EXT" TO "PROGRAMADORESCSI";
