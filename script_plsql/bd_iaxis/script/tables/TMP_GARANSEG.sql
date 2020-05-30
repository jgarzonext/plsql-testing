--------------------------------------------------------
--  DDL for Table TMP_GARANSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."TMP_GARANSEG" 
   (	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"CGARANT" NUMBER(4,0), 
	"NMOVIMI" NUMBER(4,0), 
	"FINIEFE" DATE, 
	"TMGARAN" NUMBER, 
	"CREVALI" NUMBER(2,0), 
	"PREVALI" NUMBER(8,5), 
	"IREVALI" NUMBER(15,6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."TMP_GARANSEG"."SSEGURO" IS 'C�digo Seguro';
   COMMENT ON COLUMN "AXIS"."TMP_GARANSEG"."NRIESGO" IS 'N�mero Riesgo';
   COMMENT ON COLUMN "AXIS"."TMP_GARANSEG"."CGARANT" IS 'C�digo Garant�a';
   COMMENT ON COLUMN "AXIS"."TMP_GARANSEG"."NMOVIMI" IS 'N�mero Movimiento';
   COMMENT ON COLUMN "AXIS"."TMP_GARANSEG"."FINIEFE" IS 'Fecha inicio efecto';
   COMMENT ON COLUMN "AXIS"."TMP_GARANSEG"."TMGARAN" IS 'C�digo Mortalidad';
   COMMENT ON COLUMN "AXIS"."TMP_GARANSEG"."CREVALI" IS 'C�digo Revalorizaci�n';
   COMMENT ON COLUMN "AXIS"."TMP_GARANSEG"."PREVALI" IS 'Porcentaje Revalorizaci�n';
   COMMENT ON COLUMN "AXIS"."TMP_GARANSEG"."IREVALI" IS 'Importe Revalorizaci�n';
   COMMENT ON TABLE "AXIS"."TMP_GARANSEG"  IS 'Temporal Garant�as Seguros Mortalidad';
  GRANT UPDATE ON "AXIS"."TMP_GARANSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_GARANSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TMP_GARANSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TMP_GARANSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_GARANSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TMP_GARANSEG" TO "PROGRAMADORESCSI";