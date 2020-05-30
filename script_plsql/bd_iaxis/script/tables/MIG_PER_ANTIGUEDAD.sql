--------------------------------------------------------
--  DDL for Table MIG_PER_ANTIGUEDAD
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_PER_ANTIGUEDAD" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"SPERSON" NUMBER(6,0), 
	"CAGRUPA" NUMBER(3,0), 
	"NORDEN" NUMBER(8,0), 
	"FANTIGUEDAD" DATE, 
	"CESTADO" NUMBER(3,0), 
	"SSEGURO_INI" NUMBER(6,0), 
	"NMOVIMI_INI" NUMBER(4,0), 
	"FFIN" DATE, 
	"SSEGURO_FIN" NUMBER(6,0), 
	"NMOVIMI_FIN" NUMBER(4,0), 
	"FALTA" DATE, 
	"CUSUALT" VARCHAR2(32 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_PER_ANTIGUEDAD"."NCARGA" IS 'Numero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_PER_ANTIGUEDAD"."CESTMIG" IS 'Estado de la migracion';
   COMMENT ON COLUMN "AXIS"."MIG_PER_ANTIGUEDAD"."SPERSON" IS 'Número de secuencia de persona, valor=0, lo calcula el proceso de migración';
   COMMENT ON COLUMN "AXIS"."MIG_PER_ANTIGUEDAD"."CAGRUPA" IS 'Código de la agrupación (tabla CODAGRUPA_ANTIGUEDAD)';
   COMMENT ON COLUMN "AXIS"."MIG_PER_ANTIGUEDAD"."NORDEN" IS 'Nº de orden por persona por agrupación';
   COMMENT ON COLUMN "AXIS"."MIG_PER_ANTIGUEDAD"."FANTIGUEDAD" IS 'Fecha de antigüedad de la persona en la agrupación';
   COMMENT ON COLUMN "AXIS"."MIG_PER_ANTIGUEDAD"."CESTADO" IS 'Estado de la antigüedad de la persona (v.f.1120)';
   COMMENT ON COLUMN "AXIS"."MIG_PER_ANTIGUEDAD"."SSEGURO_INI" IS 'Identificador de la póliza que provocó el inicio de la antigüedad';
   COMMENT ON COLUMN "AXIS"."MIG_PER_ANTIGUEDAD"."NMOVIMI_INI" IS 'Movimiento del sseguro_ini en el cual se provocó el inicio de la antigüedad';
   COMMENT ON COLUMN "AXIS"."MIG_PER_ANTIGUEDAD"."FFIN" IS 'Fecha fin de la antigüedad de la persona en la agrupación';
   COMMENT ON COLUMN "AXIS"."MIG_PER_ANTIGUEDAD"."SSEGURO_FIN" IS 'Identificador de la póliza que provocó el fin de la antigüedad';
   COMMENT ON COLUMN "AXIS"."MIG_PER_ANTIGUEDAD"."NMOVIMI_FIN" IS 'Movimiento del sseguro_fin en el cual se provocó el fin de la antigüedad';
   COMMENT ON COLUMN "AXIS"."MIG_PER_ANTIGUEDAD"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."MIG_PER_ANTIGUEDAD"."CUSUALT" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."MIG_PER_ANTIGUEDAD"."FMODIFI" IS 'Fecha de modificación';
   COMMENT ON COLUMN "AXIS"."MIG_PER_ANTIGUEDAD"."CUSUMOD" IS 'Usuario de modificación';
   COMMENT ON TABLE "AXIS"."MIG_PER_ANTIGUEDAD"  IS 'Tabla para la migración de la antiguedad de personas';
  GRANT UPDATE ON "AXIS"."MIG_PER_ANTIGUEDAD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_PER_ANTIGUEDAD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_PER_ANTIGUEDAD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_PER_ANTIGUEDAD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_PER_ANTIGUEDAD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_PER_ANTIGUEDAD" TO "PROGRAMADORESCSI";
