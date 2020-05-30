--------------------------------------------------------
--  DDL for Table SGT_PREGUNTAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."SGT_PREGUNTAS" 
   (	"PREGUNTA" NUMBER(6,0), 
	"TEXTO" VARCHAR2(255 BYTE), 
	"TIPO_RESPUESTA" VARCHAR2(1 BYTE), 
	"TRAMO" NUMBER(6,0), 
	"UM" NUMBER(15,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SGT_PREGUNTAS"."PREGUNTA" IS 'C�digo de pregunta';
   COMMENT ON COLUMN "AXIS"."SGT_PREGUNTAS"."TEXTO" IS 'Texto de la pregunta';
   COMMENT ON COLUMN "AXIS"."SGT_PREGUNTAS"."TIPO_RESPUESTA" IS 'B=Booleana 
V=Valor';
  GRANT UPDATE ON "AXIS"."SGT_PREGUNTAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SGT_PREGUNTAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SGT_PREGUNTAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SGT_PREGUNTAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SGT_PREGUNTAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SGT_PREGUNTAS" TO "PROGRAMADORESCSI";
