--------------------------------------------------------
--  DDL for Table PER_INDICADORES
--------------------------------------------------------

  CREATE TABLE "AXIS"."PER_INDICADORES" 
   (	"CODVINCULO" NUMBER, 
	"CODSUBVINCULO" NUMBER, 
	"SPERSON" NUMBER, 
	"CTIPIND" NUMBER, 
	"FALTA" DATE, 
	"CUSUALTA" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PER_INDICADORES"."CODVINCULO" IS 'Codigo tipo de Vinculo de la persona';
   COMMENT ON COLUMN "AXIS"."PER_INDICADORES"."CODSUBVINCULO" IS 'Codigo Subvinculo de la persona(Agente, Compañias)';
   COMMENT ON COLUMN "AXIS"."PER_INDICADORES"."SPERSON" IS 'Codigo de la persona';
   COMMENT ON COLUMN "AXIS"."PER_INDICADORES"."CTIPIND" IS 'Codigo Tipo de Indicador';
   COMMENT ON COLUMN "AXIS"."PER_INDICADORES"."FALTA" IS 'Fecha de creacion';
   COMMENT ON COLUMN "AXIS"."PER_INDICADORES"."CUSUALTA" IS 'Usuario que realiza la operacion';
  GRANT SELECT ON "AXIS"."PER_INDICADORES" TO "PROGRAMADORESCSI";
  GRANT UPDATE ON "AXIS"."PER_INDICADORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PER_INDICADORES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PER_INDICADORES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PER_INDICADORES" TO "R_AXIS";
