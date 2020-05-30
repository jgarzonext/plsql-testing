--------------------------------------------------------
--  DDL for Table ESTPREGUNPOLSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTPREGUNPOLSEG" 
   (	"CPREGUN" NUMBER(4,0), 
	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"CRESPUE" FLOAT(126), 
	"TRESPUE" VARCHAR2(2000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESTPREGUNPOLSEG"."CPREGUN" IS 'C�digo de la pregunta';
   COMMENT ON COLUMN "AXIS"."ESTPREGUNPOLSEG"."SSEGURO" IS 'C�digo seguro dentro de AXIS';
   COMMENT ON COLUMN "AXIS"."ESTPREGUNPOLSEG"."NMOVIMI" IS 'N�mero de Movimiento del Seguro';
   COMMENT ON COLUMN "AXIS"."ESTPREGUNPOLSEG"."CRESPUE" IS 'C�digo respuesta';
   COMMENT ON COLUMN "AXIS"."ESTPREGUNPOLSEG"."TRESPUE" IS 'Descripcion respuesta tipo texto';
   COMMENT ON TABLE "AXIS"."ESTPREGUNPOLSEG"  IS 'Preguntas a nivel de p�liza';
  GRANT UPDATE ON "AXIS"."ESTPREGUNPOLSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTPREGUNPOLSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTPREGUNPOLSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTPREGUNPOLSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTPREGUNPOLSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTPREGUNPOLSEG" TO "PROGRAMADORESCSI";