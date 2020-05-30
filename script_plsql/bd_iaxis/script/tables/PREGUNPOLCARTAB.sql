--------------------------------------------------------
--  DDL for Table PREGUNPOLCARTAB
--------------------------------------------------------

  CREATE TABLE "AXIS"."PREGUNPOLCARTAB" 
   (	"SSEGURO" NUMBER, 
	"CPREGUN" NUMBER(4,0), 
	"NMOVIMI" NUMBER(4,0), 
	"SPROCES" NUMBER, 
	"NLINEA" NUMBER, 
	"CCOLUMNA" VARCHAR2(50 BYTE), 
	"TVALOR" VARCHAR2(250 BYTE), 
	"FVALOR" DATE, 
	"NVALOR" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PREGUNPOLCARTAB"."SSEGURO" IS 'C�digo del seguro';
   COMMENT ON COLUMN "AXIS"."PREGUNPOLCARTAB"."CPREGUN" IS 'C�digo de la pregunta';
   COMMENT ON COLUMN "AXIS"."PREGUNPOLCARTAB"."NMOVIMI" IS 'Movimiento p�liza';
   COMMENT ON COLUMN "AXIS"."PREGUNPOLCARTAB"."SPROCES" IS 'C�digo del proceso';
   COMMENT ON COLUMN "AXIS"."PREGUNPOLCARTAB"."NLINEA" IS 'Linea del desglose';
   COMMENT ON COLUMN "AXIS"."PREGUNPOLCARTAB"."CCOLUMNA" IS 'Identificador de la columna';
   COMMENT ON COLUMN "AXIS"."PREGUNPOLCARTAB"."TVALOR" IS 'Respuesta columna(texto)';
   COMMENT ON COLUMN "AXIS"."PREGUNPOLCARTAB"."FVALOR" IS 'Respuesta columna(Fecha)';
   COMMENT ON COLUMN "AXIS"."PREGUNPOLCARTAB"."NVALOR" IS 'Respuesta columna(numerico)';
   COMMENT ON TABLE "AXIS"."PREGUNPOLCARTAB"  IS 'Tabla respuestas de las columnas de las preguntas en formato tabla';
  GRANT UPDATE ON "AXIS"."PREGUNPOLCARTAB" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PREGUNPOLCARTAB" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PREGUNPOLCARTAB" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PREGUNPOLCARTAB" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PREGUNPOLCARTAB" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PREGUNPOLCARTAB" TO "PROGRAMADORESCSI";
