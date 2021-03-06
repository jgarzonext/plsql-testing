--------------------------------------------------------
--  DDL for Table TRAMO_SINIESTRALIDAD_BONO
--------------------------------------------------------

  CREATE TABLE "AXIS"."TRAMO_SINIESTRALIDAD_BONO" 
   (	"ID" NUMBER, 
	"SCONTRA" NUMBER(6,0), 
	"NVERSIO" NUMBER(2,0), 
	"CTRAMO" NUMBER(2,0), 
	"PSINIESTRA" NUMBER(2,0), 
	"PBONOREC" NUMBER(2,0), 
	"FALTA" DATE, 
	"CUSUALTA" VARCHAR2(20 BYTE), 
	"FULTMOD" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."TRAMO_SINIESTRALIDAD_BONO"."ID" IS 'Identificador del registro';
   COMMENT ON COLUMN "AXIS"."TRAMO_SINIESTRALIDAD_BONO"."SCONTRA" IS 'Identificador del Contrato';
   COMMENT ON COLUMN "AXIS"."TRAMO_SINIESTRALIDAD_BONO"."NVERSIO" IS 'N�mero de versi�n';
   COMMENT ON COLUMN "AXIS"."TRAMO_SINIESTRALIDAD_BONO"."CTRAMO" IS 'Identificador del Tramo';
   COMMENT ON COLUMN "AXIS"."TRAMO_SINIESTRALIDAD_BONO"."PSINIESTRA" IS 'Porcentaje de siniestralidad del contrato-versi�n-tramo';
   COMMENT ON COLUMN "AXIS"."TRAMO_SINIESTRALIDAD_BONO"."PBONOREC" IS 'Porcentaje del bono por no reclamaci�n asociado al % de Siniestralidad';
   COMMENT ON COLUMN "AXIS"."TRAMO_SINIESTRALIDAD_BONO"."FALTA" IS 'Fecha de Alta del registro';
   COMMENT ON COLUMN "AXIS"."TRAMO_SINIESTRALIDAD_BONO"."CUSUALTA" IS 'Usuario de alta del registro';
   COMMENT ON COLUMN "AXIS"."TRAMO_SINIESTRALIDAD_BONO"."FULTMOD" IS 'Fecha de �ltima modificaci�n del registro';
   COMMENT ON COLUMN "AXIS"."TRAMO_SINIESTRALIDAD_BONO"."CUSUMOD" IS 'Usuario de �ltima modificaci�n del registro';
   COMMENT ON TABLE "AXIS"."TRAMO_SINIESTRALIDAD_BONO"  IS 'Tabla que indica los % de siniestralidad.';
  GRANT UPDATE ON "AXIS"."TRAMO_SINIESTRALIDAD_BONO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TRAMO_SINIESTRALIDAD_BONO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TRAMO_SINIESTRALIDAD_BONO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TRAMO_SINIESTRALIDAD_BONO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TRAMO_SINIESTRALIDAD_BONO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TRAMO_SINIESTRALIDAD_BONO" TO "PROGRAMADORESCSI";
