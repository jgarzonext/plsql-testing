--------------------------------------------------------
--  DDL for Table PREGUNPOLSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."PREGUNPOLSEG" 
   (	"SSEGURO" NUMBER, 
	"CPREGUN" NUMBER(4,0), 
	"CRESPUE" FLOAT(126), 
	"NMOVIMI" NUMBER(4,0), 
	"TRESPUE" VARCHAR2(2000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PREGUNPOLSEG"."SSEGURO" IS 'C�digo seguro dentro de AXIS';
   COMMENT ON COLUMN "AXIS"."PREGUNPOLSEG"."CPREGUN" IS 'C�digo de la pregunta';
   COMMENT ON COLUMN "AXIS"."PREGUNPOLSEG"."CRESPUE" IS 'C�digo respuesta';
   COMMENT ON COLUMN "AXIS"."PREGUNPOLSEG"."NMOVIMI" IS 'N�mero de Movimiento del Seguro';
   COMMENT ON COLUMN "AXIS"."PREGUNPOLSEG"."TRESPUE" IS 'Descripcion respuesta tipo texto';
   COMMENT ON TABLE "AXIS"."PREGUNPOLSEG"  IS 'Preguntas a nivel de p�liza';
  GRANT UPDATE ON "AXIS"."PREGUNPOLSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PREGUNPOLSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PREGUNPOLSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PREGUNPOLSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PREGUNPOLSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PREGUNPOLSEG" TO "PROGRAMADORESCSI";