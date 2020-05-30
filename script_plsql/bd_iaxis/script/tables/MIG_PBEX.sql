--------------------------------------------------------
--  DDL for Table MIG_PBEX
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_PBEX" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"CEMPRES" NUMBER(2,0), 
	"FCALCUL" DATE, 
	"SPROCES" NUMBER, 
	"CRAMDGS" NUMBER(4,0), 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"SSEGURO" NUMBER, 
	"CGARANT" NUMBER(4,0), 
	"IVALACT" NUMBER, 
	"ICAPGAR" NUMBER, 
	"IPROMAT" NUMBER, 
	"CERROR" NUMBER(2,0), 
	"NRIESGO" NUMBER(6,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_PBEX"."NCARGA" IS 'N�mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_PBEX"."CESTMIG" IS 'Estado del registro valor inicial 1';
   COMMENT ON COLUMN "AXIS"."MIG_PBEX"."MIG_PK" IS 'Clave �nica de MIG_GARANSEG';
   COMMENT ON COLUMN "AXIS"."MIG_PBEX"."MIG_FK" IS 'Clave externa para la p�liza (MIG_SEGUROS)';
   COMMENT ON COLUMN "AXIS"."MIG_PBEX"."CEMPRES" IS 'C�digo de empresa';
   COMMENT ON COLUMN "AXIS"."MIG_PBEX"."SPROCES" IS 'Proceso';
   COMMENT ON COLUMN "AXIS"."MIG_PBEX"."CRAMDGS" IS 'Ramo';
   COMMENT ON COLUMN "AXIS"."MIG_PBEX"."CMODALI" IS 'Modalidad';
   COMMENT ON COLUMN "AXIS"."MIG_PBEX"."CTIPSEG" IS 'Tipo';
   COMMENT ON COLUMN "AXIS"."MIG_PBEX"."CCOLECT" IS 'Colectivo';
   COMMENT ON COLUMN "AXIS"."MIG_PBEX"."SSEGURO" IS 'N�mero de secuencia de seguro, valor=0, lo calcula el proceso de migraci�n';
   COMMENT ON COLUMN "AXIS"."MIG_PBEX"."CGARANT" IS 'C�digo Garantia';
   COMMENT ON COLUMN "AXIS"."MIG_PBEX"."IVALACT" IS 'Valor ivalact';
   COMMENT ON COLUMN "AXIS"."MIG_PBEX"."IPROMAT" IS 'Valor ipromat';
   COMMENT ON COLUMN "AXIS"."MIG_PBEX"."CERROR" IS 'C�digo de error';
   COMMENT ON TABLE "AXIS"."MIG_PBEX"  IS 'Tabla Intermedia migraci�n Participaci�n de utilidades';
  GRANT UPDATE ON "AXIS"."MIG_PBEX" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_PBEX" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_PBEX" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_PBEX" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_PBEX" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_PBEX" TO "PROGRAMADORESCSI";