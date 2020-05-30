--------------------------------------------------------
--  DDL for Table ESTVALIDACARGAPREGTAB
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTVALIDACARGAPREGTAB" 
   (	"CPREGUN" NUMBER, 
	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER, 
	"NRIESGO" NUMBER, 
	"CGARANT" NUMBER, 
	"NORDEN" NUMBER, 
	"SPROCES" NUMBER, 
	"CVALIDA" NUMBER, 
	"CUSUARI" VARCHAR2(50 BYTE), 
	"FECHA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESTVALIDACARGAPREGTAB"."CPREGUN" IS 'C�digo de pregunta';
   COMMENT ON COLUMN "AXIS"."ESTVALIDACARGAPREGTAB"."SSEGURO" IS 'C�digo de seguro';
   COMMENT ON COLUMN "AXIS"."ESTVALIDACARGAPREGTAB"."NMOVIMI" IS 'N�mero de movimiento';
   COMMENT ON COLUMN "AXIS"."ESTVALIDACARGAPREGTAB"."NRIESGO" IS 'N�mero de riesgo';
   COMMENT ON COLUMN "AXIS"."ESTVALIDACARGAPREGTAB"."CGARANT" IS 'Garantia';
   COMMENT ON COLUMN "AXIS"."ESTVALIDACARGAPREGTAB"."NORDEN" IS 'N�mero de orden';
   COMMENT ON COLUMN "AXIS"."ESTVALIDACARGAPREGTAB"."SPROCES" IS 'C�digo de proceso';
   COMMENT ON COLUMN "AXIS"."ESTVALIDACARGAPREGTAB"."CVALIDA" IS 'Estado de la carga 0-Ok 1-Ko';
   COMMENT ON COLUMN "AXIS"."ESTVALIDACARGAPREGTAB"."CUSUARI" IS 'Usuario que autoriza la carga';
   COMMENT ON COLUMN "AXIS"."ESTVALIDACARGAPREGTAB"."FECHA" IS 'Fecha de la autorizaci�n';
   COMMENT ON TABLE "AXIS"."ESTVALIDACARGAPREGTAB"  IS 'Tabla para validar cargas de preguntas tipo tabla';
  GRANT UPDATE ON "AXIS"."ESTVALIDACARGAPREGTAB" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTVALIDACARGAPREGTAB" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTVALIDACARGAPREGTAB" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTVALIDACARGAPREGTAB" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTVALIDACARGAPREGTAB" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTVALIDACARGAPREGTAB" TO "PROGRAMADORESCSI";
