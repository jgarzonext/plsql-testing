--------------------------------------------------------
--  DDL for Table INT_ERRORES
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_ERRORES" 
   (	"SINTERF" NUMBER, 
	"CCODERR" VARCHAR2(250 BYTE), 
	"CCAMPO" VARCHAR2(250 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INT_ERRORES"."SINTERF" IS 'Secuencia para la interfaz';
   COMMENT ON COLUMN "AXIS"."INT_ERRORES"."CCODERR" IS 'C�digo de error';
   COMMENT ON COLUMN "AXIS"."INT_ERRORES"."CCAMPO" IS 'C�digo del campo que ha generado el error';
  GRANT UPDATE ON "AXIS"."INT_ERRORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_ERRORES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INT_ERRORES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INT_ERRORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_ERRORES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INT_ERRORES" TO "PROGRAMADORESCSI";
