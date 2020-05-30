--------------------------------------------------------
--  DDL for Table MIG_SEGDISIN2
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_SEGDISIN2" 
   (	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"FINICIO" DATE, 
	"FFIN" DATE, 
	"CCESTA" NUMBER(3,0), 
	"PDISTREC" NUMBER(9,6), 
	"PDISTUNI" NUMBER(9,6), 
	"PDISTEXT" NUMBER(9,6), 
	"CMODABO" NUMBER, 
	"NCARGA" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"CESTMIG" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_SEGDISIN2"."CMODABO" IS 'Modo de abono de dividendos y bonos Detvalores(xxx) ';
   COMMENT ON COLUMN "AXIS"."MIG_SEGDISIN2"."NCARGA" IS 'N�mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_SEGDISIN2"."MIG_PK" IS 'Clave �nica de MIG_SEGDISIN2';
   COMMENT ON COLUMN "AXIS"."MIG_SEGDISIN2"."MIG_FK" IS 'Clave externa para la p�liza (MIG_SEGUROS)';
   COMMENT ON COLUMN "AXIS"."MIG_SEGDISIN2"."CESTMIG" IS 'Estado del registro valor inicial 1';
   COMMENT ON TABLE "AXIS"."MIG_SEGDISIN2"  IS 'Tabla Intermedia migraci�n SEGDISIN2, contiene la distribuci�n de una cesta dentro del modelo de inversi�n vigente';
  GRANT UPDATE ON "AXIS"."MIG_SEGDISIN2" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_SEGDISIN2" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_SEGDISIN2" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_SEGDISIN2" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_SEGDISIN2" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_SEGDISIN2" TO "PROGRAMADORESCSI";
