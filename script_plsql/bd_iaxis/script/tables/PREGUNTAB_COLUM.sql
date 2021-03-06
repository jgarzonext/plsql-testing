--------------------------------------------------------
--  DDL for Table PREGUNTAB_COLUM
--------------------------------------------------------

  CREATE TABLE "AXIS"."PREGUNTAB_COLUM" 
   (	"CPREGUN" NUMBER(4,0), 
	"CCOLUMN" VARCHAR2(50 BYTE), 
	"CTIPCOL" NUMBER(1,0), 
	"TCONSULTA" VARCHAR2(4000 BYTE), 
	"SLITERA" NUMBER(8,0), 
	"CCLAVEVALOR" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PREGUNTAB_COLUM"."CPREGUN" IS 'Identificador de la pregunta';
   COMMENT ON COLUMN "AXIS"."PREGUNTAB_COLUM"."CCOLUMN" IS 'Identificador de la columna';
   COMMENT ON COLUMN "AXIS"."PREGUNTAB_COLUM"."CTIPCOL" IS 'Tipo de valor de la columna Vf.: 1079';
   COMMENT ON COLUMN "AXIS"."PREGUNTAB_COLUM"."TCONSULTA" IS 'Select en el caso que sea ctipcol = 5';
   COMMENT ON COLUMN "AXIS"."PREGUNTAB_COLUM"."SLITERA" IS 'Literal que contiene la descripci�n de la columna';
   COMMENT ON COLUMN "AXIS"."PREGUNTAB_COLUM"."CCLAVEVALOR" IS '0 - Clave; 1 - Valor';
   COMMENT ON TABLE "AXIS"."PREGUNTAB_COLUM"  IS 'Tabla para definir las columnas asociadas a la tabla din�mica de preguntas';
  GRANT UPDATE ON "AXIS"."PREGUNTAB_COLUM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PREGUNTAB_COLUM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PREGUNTAB_COLUM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PREGUNTAB_COLUM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PREGUNTAB_COLUM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PREGUNTAB_COLUM" TO "PROGRAMADORESCSI";
