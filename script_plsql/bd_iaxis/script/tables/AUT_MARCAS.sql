--------------------------------------------------------
--  DDL for Table AUT_MARCAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."AUT_MARCAS" 
   (	"CMARCA" VARCHAR2(5 BYTE), 
	"TMARCA" VARCHAR2(100 BYTE), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"FBAJA" DATE, 
	"CEMPRES" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AUT_MARCAS"."CMARCA" IS 'C�digo de la marca';
   COMMENT ON COLUMN "AXIS"."AUT_MARCAS"."TMARCA" IS 'Descripci�n de la marca';
   COMMENT ON COLUMN "AXIS"."AUT_MARCAS"."CUSUALT" IS 'Usuario que da de alta el registro';
   COMMENT ON COLUMN "AXIS"."AUT_MARCAS"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."AUT_MARCAS"."CUSUMOD" IS 'Usuario de la �ltima modificaci�n del registro';
   COMMENT ON COLUMN "AXIS"."AUT_MARCAS"."FMODIFI" IS 'Fecha de la �ltima modificaci�n del registro';
   COMMENT ON COLUMN "AXIS"."AUT_MARCAS"."FBAJA" IS 'Fecha de baja del registro';
   COMMENT ON COLUMN "AXIS"."AUT_MARCAS"."CEMPRES" IS 'Codigo de empresa';
  GRANT UPDATE ON "AXIS"."AUT_MARCAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUT_MARCAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AUT_MARCAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AUT_MARCAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUT_MARCAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AUT_MARCAS" TO "PROGRAMADORESCSI";
