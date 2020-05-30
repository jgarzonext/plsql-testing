--------------------------------------------------------
--  DDL for Table INT_FICHERO_CABECERA
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_FICHERO_CABECERA" 
   (	"CFICHERO" VARCHAR2(3 BYTE), 
	"TNOMFICHERO" VARCHAR2(30 BYTE), 
	"TPARPATH" VARCHAR2(20 BYTE), 
	"TTIPOFICHERO" NUMBER(2,0), 
	"CSEPARADOR" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INT_FICHERO_CABECERA"."CFICHERO" IS 'C�digo del fichero';
   COMMENT ON COLUMN "AXIS"."INT_FICHERO_CABECERA"."TNOMFICHERO" IS 'Nombre del fichero';
   COMMENT ON COLUMN "AXIS"."INT_FICHERO_CABECERA"."TPARPATH" IS 'Nombre del par�metro que contiene el path del fichero';
   COMMENT ON COLUMN "AXIS"."INT_FICHERO_CABECERA"."TTIPOFICHERO" IS 'Tipo de fichero: 1-Ancho Fijo , 2-Delimitado por caracteres, 3-XML';
   COMMENT ON COLUMN "AXIS"."INT_FICHERO_CABECERA"."CSEPARADOR" IS 'Si el tipo de fichero es 2, el caracter que hace de delimitador sino null';
  GRANT UPDATE ON "AXIS"."INT_FICHERO_CABECERA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_FICHERO_CABECERA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INT_FICHERO_CABECERA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INT_FICHERO_CABECERA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_FICHERO_CABECERA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INT_FICHERO_CABECERA" TO "PROGRAMADORESCSI";