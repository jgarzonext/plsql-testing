--------------------------------------------------------
--  DDL for Table MIG_BLOQUEOSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_BLOQUEOSEG" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"MIG_FK2" VARCHAR2(50 BYTE), 
	"SSEGURO" NUMBER, 
	"FINICIO" DATE, 
	"FFINAL" DATE, 
	"IIMPORTE" NUMBER, 
	"TTEXTO" VARCHAR2(1000 BYTE), 
	"CMOTMOV" NUMBER(3,0), 
	"NMOVIMI" NUMBER(4,0), 
	"NBLOQUEO" NUMBER(3,0), 
	"SPERSON" NUMBER(10,0), 
	"COPCIONAL" NUMBER, 
	"NRANGO" NUMBER, 
	"NCOLATER" NUMBER, 
	"CTIPOCAUSA" NUMBER(3,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_BLOQUEOSEG"."MIG_PK" IS 'Clave única de  MIG_BLOQUEOSEG';
   COMMENT ON COLUMN "AXIS"."MIG_BLOQUEOSEG"."MIG_FK" IS 'Clave externa para el (MIG_MOVSEGURO)';
   COMMENT ON COLUMN "AXIS"."MIG_BLOQUEOSEG"."MIG_FK2" IS 'Clave externa para el (MIG_PERSONAS)';
   COMMENT ON COLUMN "AXIS"."MIG_BLOQUEOSEG"."SSEGURO" IS 'Código del seguro';
   COMMENT ON COLUMN "AXIS"."MIG_BLOQUEOSEG"."FINICIO" IS 'Fecha de inicio del bloqueo o la pignoración';
   COMMENT ON COLUMN "AXIS"."MIG_BLOQUEOSEG"."FFINAL" IS 'Fecha de fin del bloqueo o la pignoración';
   COMMENT ON COLUMN "AXIS"."MIG_BLOQUEOSEG"."IIMPORTE" IS 'Importe pignorado';
   COMMENT ON COLUMN "AXIS"."MIG_BLOQUEOSEG"."TTEXTO" IS 'Motivo del bloqueo o la pignoración';
   COMMENT ON COLUMN "AXIS"."MIG_BLOQUEOSEG"."CMOTMOV" IS 'Motivo del movimiento que corresponde al tipo de bloqueo ( 261.- Pignoracion, 262.- Bloqueo, 263.- Despignoracion, 264.- Desbloqueo )';
   COMMENT ON COLUMN "AXIS"."MIG_BLOQUEOSEG"."NMOVIMI" IS 'Número del movimiento al que corresponde el bloqueo';
   COMMENT ON COLUMN "AXIS"."MIG_BLOQUEOSEG"."SPERSON" IS 'Identificador de la persona (entidad creditora)';
   COMMENT ON COLUMN "AXIS"."MIG_BLOQUEOSEG"."COPCIONAL" IS 'Indicador de si el desbloqueo es condicional/temporal';
   COMMENT ON COLUMN "AXIS"."MIG_BLOQUEOSEG"."NRANGO" IS 'Número de rango dentro de las pignoraciones (V.F 8000957)';
   COMMENT ON COLUMN "AXIS"."MIG_BLOQUEOSEG"."NCOLATER" IS 'Colateral number';
   COMMENT ON COLUMN "AXIS"."MIG_BLOQUEOSEG"."CTIPOCAUSA" IS 'Tipo de la causa (V.F 8000958)';
   COMMENT ON TABLE "AXIS"."MIG_BLOQUEOSEG"  IS 'Tabla Intermedia migración Bloqueo/pignoración de seguros';
  GRANT UPDATE ON "AXIS"."MIG_BLOQUEOSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_BLOQUEOSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_BLOQUEOSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_BLOQUEOSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_BLOQUEOSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_BLOQUEOSEG" TO "PROGRAMADORESCSI";
