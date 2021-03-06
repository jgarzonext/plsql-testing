--------------------------------------------------------
--  DDL for Table DICCIONARIO_HOST_BM
--------------------------------------------------------

  CREATE TABLE "AXIS"."DICCIONARIO_HOST_BM" 
   (	"TIPO_CODIGO" VARCHAR2(10 BYTE), 
	"CODIGO_HOST" VARCHAR2(10 BYTE), 
	"DESCRIPCION_HOST" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."DICCIONARIO_HOST_BM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DICCIONARIO_HOST_BM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DICCIONARIO_HOST_BM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DICCIONARIO_HOST_BM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DICCIONARIO_HOST_BM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DICCIONARIO_HOST_BM" TO "PROGRAMADORESCSI";
