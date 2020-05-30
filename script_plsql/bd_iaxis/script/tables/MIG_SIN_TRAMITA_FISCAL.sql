--------------------------------------------------------
--  DDL for Table MIG_SIN_TRAMITA_FISCAL
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_SIN_TRAMITA_FISCAL" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"NSINIES" VARCHAR2(14 BYTE), 
	"NTRAMIT" NUMBER(4,0), 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"MIG_FK2" VARCHAR2(50 BYTE), 
	"NORDEN" NUMBER, 
	"FAPERTU" DATE, 
	"FIMPUTA" DATE, 
	"FNOTIFI" DATE, 
	"FAUDIEN" DATE, 
	"HAUDIEN" DATE, 
	"CAUDIEN" NUMBER, 
	"SPROFES" NUMBER, 
	"COTERRI" NUMBER, 
	"CCONTRA" NUMBER, 
	"CUESPEC" NUMBER, 
	"TCONTRA" VARCHAR2(2000 BYTE), 
	"CTIPTRA" NUMBER(8,0), 
	"TESTADO" VARCHAR2(2000 BYTE), 
	"CMEDIO" NUMBER, 
	"FDESCAR" DATE, 
	"FFALLO" DATE, 
	"CFALLO" NUMBER, 
	"TFALLO" VARCHAR2(2000 BYTE), 
	"CRECURSO" NUMBER, 
	"FMODIFI" DATE, 
	"CUSUALT" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."NSINIES" IS 'Numero Siniestro';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."NTRAMIT" IS 'Numero Tramitacion Siniestro';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."MIG_PK" IS 'Clave �nica de MIG_SIN_TRAMITA_FISCAL';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."MIG_FK" IS 'Clave externa de MIG_SIN_SINIESTRO';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."MIG_FK2" IS 'Clave externa de MIG_SIN_TRAMITACION.';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."NORDEN" IS 'N�mero Orden Proceso';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."FAPERTU" IS 'Fecha de auto de apertura';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."FIMPUTA" IS 'Fecha del auto de imputaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."FNOTIFI" IS 'Fecha de notificaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."FAUDIEN" IS 'Fecha de audiencia de descargas';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."HAUDIEN" IS 'Hora de audiencia de descargas (Null, en este caso)';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."CAUDIEN" IS 'C�digo postal - Ciudad audiencia  (16.1.1.16 Valor C�digo Postal)';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."SPROFES" IS 'Clave externa de MIG_SIN_PROF_PROFESIONALES (Profesional que asiste a la audiencia) ';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."COTERRI" IS 'Orden territorial de la contralor�a (VF 8001116)';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."CCONTRA" IS 'C�digo postal - Ciudad contralor�a (16.1.1.16 Valor C�digo Postal)';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."CUESPEC" IS 'Unidades especiales (VF 8001117)';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."TCONTRA" IS 'Otras contralor�as.';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."CTIPTRA" IS 'Tipo de tr�mite (VF 8001118)';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."TESTADO" IS 'Estado de la audiencia.';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."CMEDIO" IS 'Medio realizaci�n de la audiencia (VF Tabla 8001171) (Null, en este caso)';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."FDESCAR" IS 'Fecha presentaci�n descargos';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."FFALLO" IS 'Fecha del fallo';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."CFALLO" IS 'Decisi�n del Fallo (VF 8001119)';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."TFALLO" IS 'Texto decisi�n o fallo';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."CRECURSO" IS 'Recurso (VF 8001120)';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."FMODIFI" IS 'Fecha Creaci�n/Modificaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_FISCAL"."CUSUALT" IS 'C�digo Usuario Alta';
   COMMENT ON TABLE "AXIS"."MIG_SIN_TRAMITA_FISCAL"  IS 'Fichero con la informaci�n del tr�mite fiscal.';
  GRANT UPDATE ON "AXIS"."MIG_SIN_TRAMITA_FISCAL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_SIN_TRAMITA_FISCAL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_SIN_TRAMITA_FISCAL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_SIN_TRAMITA_FISCAL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_SIN_TRAMITA_FISCAL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_SIN_TRAMITA_FISCAL" TO "PROGRAMADORESCSI";