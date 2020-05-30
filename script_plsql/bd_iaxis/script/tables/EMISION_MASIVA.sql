--------------------------------------------------------
--  DDL for Table EMISION_MASIVA
--------------------------------------------------------

  CREATE TABLE "AXIS"."EMISION_MASIVA" 
   (	"SPROCES" NUMBER, 
	"SSEGURO" NUMBER, 
	"CESTADO" NUMBER(2,0), 
	"CUSUARIO" VARCHAR2(100 BYTE), 
	"FALTA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."EMISION_MASIVA"."SPROCES" IS 'codi Proceso ';
   COMMENT ON COLUMN "AXIS"."EMISION_MASIVA"."SSEGURO" IS 'codigo p�liza que se va a emitir';
   COMMENT ON COLUMN "AXIS"."EMISION_MASIVA"."CESTADO" IS 'Estado de la emisi�n(0= pendiente, 1= emitido(los emitidos se borran una vez se acaba el proceso), 2= error,3 = en proc�s)';
   COMMENT ON COLUMN "AXIS"."EMISION_MASIVA"."CUSUARIO" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."EMISION_MASIVA"."FALTA" IS 'Fecha de alta)';
   COMMENT ON TABLE "AXIS"."EMISION_MASIVA"  IS 'Proceso para emitir p�lizas';
  GRANT UPDATE ON "AXIS"."EMISION_MASIVA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EMISION_MASIVA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."EMISION_MASIVA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."EMISION_MASIVA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EMISION_MASIVA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."EMISION_MASIVA" TO "PROGRAMADORESCSI";
