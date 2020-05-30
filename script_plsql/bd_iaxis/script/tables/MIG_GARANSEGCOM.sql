--------------------------------------------------------
--  DDL for Table MIG_GARANSEGCOM
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_GARANSEGCOM" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"CGARANT" NUMBER(4,0), 
	"NMOVIMI" NUMBER(4,0), 
	"FINIEFE" DATE, 
	"CMODCOM" NUMBER(1,0), 
	"NINIALT" NUMBER, 
	"NFINALT" NUMBER, 
	"PCOMISI" NUMBER(5,2), 
	"PCOMISICUA" NUMBER(5,2), 
	"FALTA" DATE, 
	"CUSUALT" VARCHAR2(32 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_GARANSEGCOM"."NCARGA" IS 'C�digo de la carga';
   COMMENT ON COLUMN "AXIS"."MIG_GARANSEGCOM"."CESTMIG" IS 'Estado';
   COMMENT ON COLUMN "AXIS"."MIG_GARANSEGCOM"."MIG_PK" IS 'PK';
   COMMENT ON COLUMN "AXIS"."MIG_GARANSEGCOM"."MIG_FK" IS 'FK';
   COMMENT ON COLUMN "AXIS"."MIG_GARANSEGCOM"."SSEGURO" IS 'C�digo del seguro';
   COMMENT ON COLUMN "AXIS"."MIG_GARANSEGCOM"."NRIESGO" IS 'N�mero de riesgo';
   COMMENT ON COLUMN "AXIS"."MIG_GARANSEGCOM"."CGARANT" IS 'C�digo de garant�a';
   COMMENT ON COLUMN "AXIS"."MIG_GARANSEGCOM"."NMOVIMI" IS 'N�mero de movimiento';
   COMMENT ON COLUMN "AXIS"."MIG_GARANSEGCOM"."FINIEFE" IS 'Fecha inicio de garant�a';
   COMMENT ON COLUMN "AXIS"."MIG_GARANSEGCOM"."CMODCOM" IS 'Modalidad de comisi�n';
   COMMENT ON COLUMN "AXIS"."MIG_GARANSEGCOM"."NINIALT" IS 'Inicio de altura';
   COMMENT ON COLUMN "AXIS"."MIG_GARANSEGCOM"."NFINALT" IS 'Fin de altura';
   COMMENT ON COLUMN "AXIS"."MIG_GARANSEGCOM"."PCOMISI" IS 'Porcentaje de comisi�n';
   COMMENT ON COLUMN "AXIS"."MIG_GARANSEGCOM"."PCOMISICUA" IS 'Porcentaje de comisi�n seg�n producto';
   COMMENT ON COLUMN "AXIS"."MIG_GARANSEGCOM"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."MIG_GARANSEGCOM"."CUSUALT" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."MIG_GARANSEGCOM"."FMODIFI" IS 'Fecha de modificaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_GARANSEGCOM"."CUSUMOD" IS 'Usuario de modificaci�n';
   COMMENT ON TABLE "AXIS"."MIG_GARANSEGCOM"  IS 'migrar comisi�n garant�a';
  GRANT UPDATE ON "AXIS"."MIG_GARANSEGCOM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_GARANSEGCOM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_GARANSEGCOM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_GARANSEGCOM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_GARANSEGCOM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_GARANSEGCOM" TO "PROGRAMADORESCSI";