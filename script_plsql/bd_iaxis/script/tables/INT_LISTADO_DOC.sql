--------------------------------------------------------
--  DDL for Table INT_LISTADO_DOC
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_LISTADO_DOC" 
   (	"SINTERF" NUMBER, 
	"CMAPEAD" VARCHAR2(5 BYTE), 
	"SMAPEAD" NUMBER, 
	"ID" NUMBER, 
	"NOMBRE" VARCHAR2(100 BYTE), 
	"DESCRIPCION" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INT_LISTADO_DOC"."SINTERF" IS 'Secuencia de la interfaz';
   COMMENT ON COLUMN "AXIS"."INT_LISTADO_DOC"."CMAPEAD" IS 'C�digo del mapeador de carga';
   COMMENT ON COLUMN "AXIS"."INT_LISTADO_DOC"."SMAPEAD" IS 'Secuencia del mapeador de carga';
   COMMENT ON COLUMN "AXIS"."INT_LISTADO_DOC"."ID" IS 'Identificador listado doc';
   COMMENT ON COLUMN "AXIS"."INT_LISTADO_DOC"."NOMBRE" IS 'Nombre';
   COMMENT ON COLUMN "AXIS"."INT_LISTADO_DOC"."DESCRIPCION" IS 'Descripcion';
   COMMENT ON TABLE "AXIS"."INT_LISTADO_DOC"  IS 'Tabla listado doc';
  GRANT UPDATE ON "AXIS"."INT_LISTADO_DOC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_LISTADO_DOC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INT_LISTADO_DOC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INT_LISTADO_DOC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_LISTADO_DOC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INT_LISTADO_DOC" TO "PROGRAMADORESCSI";
