--------------------------------------------------------
--  DDL for Table PREGUNGARANSEGTAB
--------------------------------------------------------

  CREATE TABLE "AXIS"."PREGUNGARANSEGTAB" 
   (	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"CPREGUN" NUMBER(4,0), 
	"CGARANT" NUMBER(4,0), 
	"NMOVIMI" NUMBER(4,0), 
	"NLINEA" NUMBER, 
	"NMOVIMA" NUMBER(4,0) DEFAULT 1, 
	"FINIEFE" DATE, 
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

   COMMENT ON COLUMN "AXIS"."PREGUNGARANSEGTAB"."SSEGURO" IS 'C�digo del seguro';
   COMMENT ON COLUMN "AXIS"."PREGUNGARANSEGTAB"."NRIESGO" IS 'n� Riesgo de la p�liza';
   COMMENT ON COLUMN "AXIS"."PREGUNGARANSEGTAB"."CPREGUN" IS 'C�digo de la pregunta';
   COMMENT ON COLUMN "AXIS"."PREGUNGARANSEGTAB"."CGARANT" IS 'C�digo Garant�a';
   COMMENT ON COLUMN "AXIS"."PREGUNGARANSEGTAB"."NMOVIMI" IS 'Movimiento p�liza';
   COMMENT ON COLUMN "AXIS"."PREGUNGARANSEGTAB"."NLINEA" IS 'Linea del desglose';
   COMMENT ON COLUMN "AXIS"."PREGUNGARANSEGTAB"."NMOVIMA" IS 'N�mero de movimiento de alta';
   COMMENT ON COLUMN "AXIS"."PREGUNGARANSEGTAB"."FINIEFE" IS 'Fecha efecto del movimiento';
   COMMENT ON COLUMN "AXIS"."PREGUNGARANSEGTAB"."CCOLUMNA" IS 'Identificador de la columna';
   COMMENT ON COLUMN "AXIS"."PREGUNGARANSEGTAB"."TVALOR" IS 'Respuesta columna(texto)';
   COMMENT ON COLUMN "AXIS"."PREGUNGARANSEGTAB"."FVALOR" IS 'Respuesta columna(Fecha)';
   COMMENT ON COLUMN "AXIS"."PREGUNGARANSEGTAB"."NVALOR" IS 'Respuesta columna(numerico)';
   COMMENT ON TABLE "AXIS"."PREGUNGARANSEGTAB"  IS 'Tabla respuestas de las columnas de las preguntas en formato tabla';
  GRANT UPDATE ON "AXIS"."PREGUNGARANSEGTAB" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PREGUNGARANSEGTAB" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PREGUNGARANSEGTAB" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PREGUNGARANSEGTAB" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PREGUNGARANSEGTAB" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PREGUNGARANSEGTAB" TO "PROGRAMADORESCSI";
