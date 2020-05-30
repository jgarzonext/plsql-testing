--------------------------------------------------------
--  DDL for Table HISDETCARENCIAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."HISDETCARENCIAS" 
   (	"SPRODUC" NUMBER(6,0), 
	"CACTIVI" NUMBER(4,0), 
	"CGARANT" NUMBER(4,0), 
	"CCAREN" NUMBER(4,0), 
	"CSEXO" NUMBER(1,0), 
	"NMESCAR" NUMBER(2,0), 
	"CTIPMOD" CHAR(1 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HISDETCARENCIAS"."SPRODUC" IS 'Producto';
   COMMENT ON COLUMN "AXIS"."HISDETCARENCIAS"."CACTIVI" IS 'Actividad';
   COMMENT ON COLUMN "AXIS"."HISDETCARENCIAS"."CGARANT" IS 'Garantia';
   COMMENT ON COLUMN "AXIS"."HISDETCARENCIAS"."CCAREN" IS 'Carencia';
   COMMENT ON COLUMN "AXIS"."HISDETCARENCIAS"."CSEXO" IS 'Sexo';
   COMMENT ON COLUMN "AXIS"."HISDETCARENCIAS"."NMESCAR" IS 'Meses de carencia';
   COMMENT ON COLUMN "AXIS"."HISDETCARENCIAS"."CTIPMOD" IS 'Tipo de modificaci�n A-Alta M-Modificaci�n B-Baja';
   COMMENT ON COLUMN "AXIS"."HISDETCARENCIAS"."FMODIFI" IS 'Fecha modificaci�n,alta o baja';
   COMMENT ON TABLE "AXIS"."HISDETCARENCIAS"  IS 'Historico de carencias por producto-actividad-garantia';
  GRANT UPDATE ON "AXIS"."HISDETCARENCIAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISDETCARENCIAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HISDETCARENCIAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HISDETCARENCIAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISDETCARENCIAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HISDETCARENCIAS" TO "PROGRAMADORESCSI";