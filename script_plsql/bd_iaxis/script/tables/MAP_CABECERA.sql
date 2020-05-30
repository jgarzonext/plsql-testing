--------------------------------------------------------
--  DDL for Table MAP_CABECERA
--------------------------------------------------------

  CREATE TABLE "AXIS"."MAP_CABECERA" 
   (	"CMAPEAD" VARCHAR2(5 BYTE), 
	"TDESMAP" VARCHAR2(30 BYTE), 
	"TPARPATH" VARCHAR2(20 BYTE), 
	"TTIPOMAP" NUMBER(2,0), 
	"CSEPARADOR" VARCHAR2(2 BYTE), 
	"CMAPCOMODIN" VARCHAR2(50 BYTE), 
	"TTIPOTRAT" VARCHAR2(1 BYTE), 
	"TCOMENTARIO" VARCHAR2(500 BYTE), 
	"TPARAMETROS" VARCHAR2(500 BYTE), 
	"CMANTEN" NUMBER(1,0), 
	"GENERA_REPORT" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MAP_CABECERA"."CMAPEAD" IS 'Código del mapeador';
   COMMENT ON COLUMN "AXIS"."MAP_CABECERA"."TDESMAP" IS 'Descripción del mapeador (nombre fichero, servicio xml, ...)';
   COMMENT ON COLUMN "AXIS"."MAP_CABECERA"."TPARPATH" IS 'Nombre del parámetro que contiene el path del fichero';
   COMMENT ON COLUMN "AXIS"."MAP_CABECERA"."TTIPOMAP" IS 'Tipo de formato: 1-Ancho Fijo , 2-Delimitado por caracteres, 3-XML, 4-Comodín';
   COMMENT ON COLUMN "AXIS"."MAP_CABECERA"."CSEPARADOR" IS 'Si el tipo de cadena es 2, el caracter que hace de delimitador sino null';
   COMMENT ON COLUMN "AXIS"."MAP_CABECERA"."CMAPCOMODIN" IS 'Lista de códigos del mapeador con datos comunes';
   COMMENT ON COLUMN "AXIS"."MAP_CABECERA"."TTIPOTRAT" IS 'Tipo de tratamiento: ''C'' carga, ''G'' generación y ''A'' Ambos';
   COMMENT ON COLUMN "AXIS"."MAP_CABECERA"."TCOMENTARIO" IS 'Comentarios';
   COMMENT ON COLUMN "AXIS"."MAP_CABECERA"."TPARAMETROS" IS 'Descripción de los parámetros (y el orden) necesarios para ejecutar el mapeador y que deben pasarse concatenados en la linia inicial';
   COMMENT ON COLUMN "AXIS"."MAP_CABECERA"."CMANTEN" IS 'Indica si se muestra o no por el mantenimiento de generación';
   COMMENT ON COLUMN "AXIS"."MAP_CABECERA"."GENERA_REPORT" IS 'Si se permite la generacion de reports a partir del map';
  GRANT UPDATE ON "AXIS"."MAP_CABECERA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MAP_CABECERA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MAP_CABECERA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MAP_CABECERA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MAP_CABECERA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MAP_CABECERA" TO "PROGRAMADORESCSI";
