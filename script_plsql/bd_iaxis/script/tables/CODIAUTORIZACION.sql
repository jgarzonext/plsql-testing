--------------------------------------------------------
--  DDL for Table CODIAUTORIZACION
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODIAUTORIZACION" 
   (	"SAUTORI" NUMBER(6,0), 
	"CTIPCOD" NUMBER(1,0), 
	"CCODSAL" VARCHAR2(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODIAUTORIZACION"."SAUTORI" IS 'N� de Autorizacion';
   COMMENT ON COLUMN "AXIS"."CODIAUTORIZACION"."CTIPCOD" IS 'Tipo de c�digo';
   COMMENT ON COLUMN "AXIS"."CODIAUTORIZACION"."CCODSAL" IS 'C�digo de salud';
  GRANT UPDATE ON "AXIS"."CODIAUTORIZACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODIAUTORIZACION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODIAUTORIZACION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODIAUTORIZACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODIAUTORIZACION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODIAUTORIZACION" TO "PROGRAMADORESCSI";
