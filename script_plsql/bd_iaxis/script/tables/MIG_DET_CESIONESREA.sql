--------------------------------------------------------
--  DDL for Table MIG_DET_CESIONESREA
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_DET_CESIONESREA" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"SCESREA" NUMBER, 
	"SDETCESREA" NUMBER, 
	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER, 
	"PTRAMO" NUMBER, 
	"CGARANT" NUMBER, 
	"ICESION" NUMBER, 
	"ICAPCES" NUMBER, 
	"PCESION" NUMBER, 
	"PSOBREPRIMA" NUMBER, 
	"IEXTRAP" NUMBER, 
	"IEXTREA" NUMBER, 
	"IPRITARREA" NUMBER, 
	"ITARIFREA" NUMBER, 
	"ICOMEXT" NUMBER, 
	"CCOMPANI" NUMBER, 
	"FALTA" DATE, 
	"CUSUALT" VARCHAR2(32 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(32 BYTE), 
	"CDEPURA" VARCHAR2(1 BYTE), 
	"FEFECDEMA" DATE, 
	"NMOVDEP" NUMBER, 
	"SPERSON" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."MIG_PK" IS 'Clave �nica de MIG_DET_CESIONESREA';
   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."MIG_FK" IS 'Clave for�nea de MIG_CESIONESREA';
   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."SCESREA" IS 'C�digo de Cesi�n (Nulo en este caso)';
   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."SDETCESREA" IS 'C�digo de Detalle de Cesi�n  (Nulo en este caso)';
   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."SSEGURO" IS 'C�digo del Seguro  (Nulo en este caso)';
   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."NMOVIMI" IS 'N�mero de Movimiento';
   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."PTRAMO" IS 'N�mero del Tramo';
   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."CGARANT" IS 'Garant�a';
   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."ICESION" IS 'Importe de Cesi�n';
   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."ICAPCES" IS 'Capital de Cesi�n';
   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."PCESION" IS 'Porcentaje de Cesi�n';
   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."PSOBREPRIMA" IS 'Sobreprima';
   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."IEXTRAP" IS 'Porcentaje Extra Prima';
   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."IEXTREA" IS 'Importe Extra Prima';
   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."IPRITARREA" IS 'Prima Tarifa';
   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."ITARIFREA" IS 'Importe Tarifa';
   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."ICOMEXT" IS 'Comisi�n';
   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."CCOMPANI" IS 'Compa��a';
   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."FALTA" IS 'Fecha Alta';
   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."CUSUALT" IS 'Usuario Alta';
   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."FMODIFI" IS 'Fecha Modifica';
   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."CUSUMOD" IS 'Usuario Modifica';
   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."CDEPURA" IS 'N/S si la garant�a aporta';
   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."FEFECDEMA" IS 'Fecha efecto manual';
   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."NMOVDEP" IS 'N�mero de depuraciones';
   COMMENT ON COLUMN "AXIS"."MIG_DET_CESIONESREA"."SPERSON" IS 'Para consorcios, 1 reg por garant�as x persona';
   COMMENT ON TABLE "AXIS"."MIG_DET_CESIONESREA"  IS 'Fichero con la informaci�n de cesiones de reaseguro por garant�a.';
  GRANT UPDATE ON "AXIS"."MIG_DET_CESIONESREA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_DET_CESIONESREA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_DET_CESIONESREA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_DET_CESIONESREA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_DET_CESIONESREA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_DET_CESIONESREA" TO "PROGRAMADORESCSI";
