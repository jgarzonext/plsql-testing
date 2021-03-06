--------------------------------------------------------
--  DDL for Table PREGUNSEGTAB
--------------------------------------------------------

  CREATE TABLE "AXIS"."PREGUNSEGTAB" 
   (	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"CPREGUN" NUMBER(4,0), 
	"NMOVIMI" NUMBER(4,0), 
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

   COMMENT ON COLUMN "AXIS"."PREGUNSEGTAB"."SSEGURO" IS 'C�digo del seguro';
   COMMENT ON COLUMN "AXIS"."PREGUNSEGTAB"."NRIESGO" IS 'n� Riesgo de la p�liza';
   COMMENT ON COLUMN "AXIS"."PREGUNSEGTAB"."CPREGUN" IS 'C�digo de la pregunta';
   COMMENT ON COLUMN "AXIS"."PREGUNSEGTAB"."NMOVIMI" IS 'Movimiento p�liza';
   COMMENT ON COLUMN "AXIS"."PREGUNSEGTAB"."NLINEA" IS 'Linea del desglose';
   COMMENT ON COLUMN "AXIS"."PREGUNSEGTAB"."CCOLUMNA" IS 'Identificador de la columna';
   COMMENT ON COLUMN "AXIS"."PREGUNSEGTAB"."TVALOR" IS 'Respuesta columna(texto)';
   COMMENT ON COLUMN "AXIS"."PREGUNSEGTAB"."FVALOR" IS 'Respuesta columna(Fecha)';
   COMMENT ON COLUMN "AXIS"."PREGUNSEGTAB"."NVALOR" IS 'Respuesta columna(numerico)';
   COMMENT ON TABLE "AXIS"."PREGUNSEGTAB"  IS 'Tabla respuestas de las columnas de las preguntas en formato tabla';
  GRANT UPDATE ON "AXIS"."PREGUNSEGTAB" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PREGUNSEGTAB" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PREGUNSEGTAB" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PREGUNSEGTAB" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PREGUNSEGTAB" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PREGUNSEGTAB" TO "PROGRAMADORESCSI";
