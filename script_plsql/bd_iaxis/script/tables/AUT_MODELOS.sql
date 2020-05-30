--------------------------------------------------------
--  DDL for Table AUT_MODELOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."AUT_MODELOS" 
   (	"CMODELO" VARCHAR2(6 BYTE), 
	"CMARCA" VARCHAR2(5 BYTE), 
	"TMODELO" VARCHAR2(100 BYTE), 
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

   COMMENT ON COLUMN "AXIS"."AUT_MODELOS"."CMODELO" IS 'C�digo del modelo';
   COMMENT ON COLUMN "AXIS"."AUT_MODELOS"."CMARCA" IS 'C�digo de la marca';
   COMMENT ON COLUMN "AXIS"."AUT_MODELOS"."TMODELO" IS 'Descripci�n del modelo';
   COMMENT ON COLUMN "AXIS"."AUT_MODELOS"."CUSUALT" IS 'Usuario que da de alta el registro';
   COMMENT ON COLUMN "AXIS"."AUT_MODELOS"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."AUT_MODELOS"."CUSUMOD" IS 'Usuario de la �ltima modificaci�n del registro';
   COMMENT ON COLUMN "AXIS"."AUT_MODELOS"."FMODIFI" IS 'Fecha de la �ltima modificaci�n del registro';
   COMMENT ON COLUMN "AXIS"."AUT_MODELOS"."FBAJA" IS 'Fecha de baja del registro';
   COMMENT ON COLUMN "AXIS"."AUT_MODELOS"."CEMPRES" IS 'Codigo de empresa';
  GRANT UPDATE ON "AXIS"."AUT_MODELOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUT_MODELOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AUT_MODELOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AUT_MODELOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUT_MODELOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AUT_MODELOS" TO "PROGRAMADORESCSI";