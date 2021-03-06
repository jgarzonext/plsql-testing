--------------------------------------------------------
--  DDL for Table MIG_SIN_TRAMITA_CITACIONES
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_SIN_TRAMITA_CITACIONES" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(14 BYTE), 
	"MIG_FK" VARCHAR2(14 BYTE), 
	"NSINIES" NUMBER, 
	"NTRAMIT" NUMBER, 
	"NCITACION" NUMBER, 
	"FCITACION" DATE, 
	"HCITACION" VARCHAR2(5 BYTE), 
	"SPERSON" NUMBER, 
	"CPAIS" NUMBER(3,0), 
	"CPROVIN" NUMBER, 
	"CPOBLAC" NUMBER, 
	"TLUGAR" VARCHAR2(200 BYTE), 
	"FALTA" DATE, 
	"TAUDIEN" VARCHAR2(2000 BYTE), 
	"CORAL" NUMBER(1,0), 
	"CESTADO" NUMBER(1,0), 
	"CRESOLU" NUMBER(1,0), 
	"FNUEVA" DATE, 
	"TRESULT" VARCHAR2(2000 BYTE), 
	"CMEDIO" NUMBER(1,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_CITACIONES"."NCARGA" IS 'N�mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_CITACIONES"."CESTMIG" IS 'Estado del registro';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_CITACIONES"."MIG_PK" IS 'Clave �nica de MIG_SIN_TRAMITACION.';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_CITACIONES"."MIG_FK" IS 'Clave externa para MIG_SIN_SINIESTRO.';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_CITACIONES"."NSINIES" IS 'Numero de siniestro';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_CITACIONES"."NTRAMIT" IS 'Numero de ntramit';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_CITACIONES"."NCITACION" IS 'N�mero citaci�n de la tramitaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_CITACIONES"."FCITACION" IS 'Fecha citaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_CITACIONES"."HCITACION" IS 'Hora citaci�n (HH:MM)';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_CITACIONES"."SPERSON" IS 'C�digo de la persona que asistir� a la cita';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_CITACIONES"."CPAIS" IS 'C�digo Pa�s';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_CITACIONES"."CPROVIN" IS 'C�digo Provincia';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_CITACIONES"."CPOBLAC" IS 'C�digo Poblaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_CITACIONES"."TLUGAR" IS 'Lugar de la citaci�n (texto libre)';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_CITACIONES"."FALTA" IS 'Fecha Alta';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_CITACIONES"."CORAL" IS '1-Si, 2-No (VF 8001094)';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_CITACIONES"."CESTADO" IS '1-Si, 2-No, 3-Aplazada (VF 8001095)';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_CITACIONES"."CRESOLU" IS '1-Favorable, 2-Desfavorable (VF 8001096)';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_CITACIONES"."FNUEVA" IS 'Nueva fecha';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_TRAMITA_CITACIONES"."CMEDIO" IS '1-VideoConferencia, 2-Presencial, 3-Escrito (VF 8001171)';
  GRANT DELETE ON "AXIS"."MIG_SIN_TRAMITA_CITACIONES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_SIN_TRAMITA_CITACIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_SIN_TRAMITA_CITACIONES" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_SIN_TRAMITA_CITACIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_SIN_TRAMITA_CITACIONES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_SIN_TRAMITA_CITACIONES" TO "PROGRAMADORESCSI";
