--------------------------------------------------------
--  DDL for Table PREGUNCAR
--------------------------------------------------------

  CREATE TABLE "AXIS"."PREGUNCAR" 
   (	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"CPREGUN" NUMBER(4,0), 
	"CRESPUE" FLOAT(126), 
	"NMOVIMI" NUMBER(4,0), 
	"SPROCES" NUMBER, 
	"TRESPUE" VARCHAR2(2000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PREGUNCAR"."SSEGURO" IS 'N�mero consecutivo de seguro asignado autom�ticamente.';
   COMMENT ON COLUMN "AXIS"."PREGUNCAR"."NRIESGO" IS 'N�mero de riesgo';
   COMMENT ON COLUMN "AXIS"."PREGUNCAR"."CPREGUN" IS 'C�digo de la pregunta';
   COMMENT ON COLUMN "AXIS"."PREGUNCAR"."CRESPUE" IS 'C�digo respuesta';
   COMMENT ON COLUMN "AXIS"."PREGUNCAR"."NMOVIMI" IS 'N�mero de movimiento';
   COMMENT ON COLUMN "AXIS"."PREGUNCAR"."SPROCES" IS 'C�digo del proceso';
   COMMENT ON TABLE "AXIS"."PREGUNCAR"  IS 'Preguntas asociadas a un seguro';
  GRANT UPDATE ON "AXIS"."PREGUNCAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PREGUNCAR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PREGUNCAR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PREGUNCAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PREGUNCAR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PREGUNCAR" TO "PROGRAMADORESCSI";
