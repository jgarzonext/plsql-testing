--------------------------------------------------------
--  DDL for Table RESPUESTAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."RESPUESTAS" 
   (	"CRESPUE" FLOAT(126), 
	"CPREGUN" NUMBER(4,0), 
	"CIDIOMA" NUMBER(2,0), 
	"TRESPUE" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."RESPUESTAS"."CRESPUE" IS 'C�digo respuesta';
   COMMENT ON COLUMN "AXIS"."RESPUESTAS"."CPREGUN" IS 'C�digo de la pregunta';
   COMMENT ON COLUMN "AXIS"."RESPUESTAS"."CIDIOMA" IS 'C�digo de Idioma';
   COMMENT ON COLUMN "AXIS"."RESPUESTAS"."TRESPUE" IS 'Valor de la respuesta';
  GRANT UPDATE ON "AXIS"."RESPUESTAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."RESPUESTAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."RESPUESTAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."RESPUESTAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."RESPUESTAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."RESPUESTAS" TO "PROGRAMADORESCSI";
