--------------------------------------------------------
--  DDL for Table MIG_DETALLE_RIESGOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_DETALLE_RIESGOS" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"NRIESGO" NUMBER(6,0), 
	"NMOVIMI" NUMBER(4,0), 
	"SSEGURO" NUMBER DEFAULT 0, 
	"NIF" VARCHAR2(50 BYTE), 
	"NOMBRE" VARCHAR2(200 BYTE), 
	"APELLIDOS" VARCHAR2(200 BYTE), 
	"CSEXO" NUMBER, 
	"FNACIM" DATE, 
	"FALTA" DATE, 
	"FBAJA" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_DETALLE_RIESGOS"."NCARGA" IS 'N�mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_DETALLE_RIESGOS"."CESTMIG" IS 'Estado del registro';
   COMMENT ON COLUMN "AXIS"."MIG_DETALLE_RIESGOS"."MIG_PK" IS 'Clave �nica de MIG_DETALLE_RIESGOS';
   COMMENT ON COLUMN "AXIS"."MIG_DETALLE_RIESGOS"."MIG_FK" IS 'Clave externa para el asegurado (MIG_MOVSEGURO)';
   COMMENT ON COLUMN "AXIS"."MIG_DETALLE_RIESGOS"."NRIESGO" IS 'N�mero de riesgo';
   COMMENT ON COLUMN "AXIS"."MIG_DETALLE_RIESGOS"."NMOVIMI" IS 'N�mero de movimiento ';
   COMMENT ON COLUMN "AXIS"."MIG_DETALLE_RIESGOS"."SSEGURO" IS 'N�mero de secuencia de seguro, valor=0, lo calcula el proceso de migraci�n';
   COMMENT ON COLUMN "AXIS"."MIG_DETALLE_RIESGOS"."NIF" IS 'Nif asegurado innominado';
   COMMENT ON COLUMN "AXIS"."MIG_DETALLE_RIESGOS"."NOMBRE" IS 'Nombre riesgo innominado';
   COMMENT ON COLUMN "AXIS"."MIG_DETALLE_RIESGOS"."APELLIDOS" IS 'Apellidos';
   COMMENT ON COLUMN "AXIS"."MIG_DETALLE_RIESGOS"."CSEXO" IS 'Sexo (detvalor 11)';
   COMMENT ON COLUMN "AXIS"."MIG_DETALLE_RIESGOS"."FNACIM" IS 'Fecha nacimiento';
   COMMENT ON COLUMN "AXIS"."MIG_DETALLE_RIESGOS"."FALTA" IS 'Fecha alta';
   COMMENT ON COLUMN "AXIS"."MIG_DETALLE_RIESGOS"."FBAJA" IS 'Fecha baja';
   COMMENT ON TABLE "AXIS"."MIG_DETALLE_RIESGOS"  IS 'Tabla Intermedia migraci�n Riesgos';
  GRANT UPDATE ON "AXIS"."MIG_DETALLE_RIESGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_DETALLE_RIESGOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_DETALLE_RIESGOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_DETALLE_RIESGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_DETALLE_RIESGOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_DETALLE_RIESGOS" TO "PROGRAMADORESCSI";
