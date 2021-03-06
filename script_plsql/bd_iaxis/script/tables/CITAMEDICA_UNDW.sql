--------------------------------------------------------
--  DDL for Table CITAMEDICA_UNDW
--------------------------------------------------------

  CREATE TABLE "AXIS"."CITAMEDICA_UNDW" 
   (	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER, 
	"NMOVIMI" NUMBER, 
	"SPERASEG" NUMBER(10,0), 
	"SPERMED" NUMBER(10,0), 
	"CEVIDEN" NUMBER(2,0), 
	"NORDEN" NUMBER, 
	"FEVIDEN" DATE, 
	"CPAGO" NUMBER, 
	"IEVIDEN" NUMBER, 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"CESTADO" NUMBER(2,0), 
	"CAIS" NUMBER DEFAULT 0
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CITAMEDICA_UNDW"."SSEGURO" IS 'N�mero consecutivo de seguro asignado autom�ticamente.';
   COMMENT ON COLUMN "AXIS"."CITAMEDICA_UNDW"."NRIESGO" IS 'Numero de riesgo ';
   COMMENT ON COLUMN "AXIS"."CITAMEDICA_UNDW"."NMOVIMI" IS 'Numero de movimiento del seguro';
   COMMENT ON COLUMN "AXIS"."CITAMEDICA_UNDW"."SPERASEG" IS 'C�digo de persona beneficiario';
   COMMENT ON COLUMN "AXIS"."CITAMEDICA_UNDW"."SPERMED" IS 'C�digo de persona Medico';
   COMMENT ON COLUMN "AXIS"."CITAMEDICA_UNDW"."CEVIDEN" IS 'C�digo de tipo de prueba medica';
   COMMENT ON COLUMN "AXIS"."CITAMEDICA_UNDW"."NORDEN" IS 'C�digo de orden cita';
   COMMENT ON COLUMN "AXIS"."CITAMEDICA_UNDW"."CPAGO" IS 'Realiza pago ?  1 = Si , 0 = No';
   COMMENT ON COLUMN "AXIS"."CITAMEDICA_UNDW"."IEVIDEN" IS 'Importe de la evidencia medica';
   COMMENT ON COLUMN "AXIS"."CITAMEDICA_UNDW"."CUSUALT" IS 'C�digo usuario alta registro';
   COMMENT ON COLUMN "AXIS"."CITAMEDICA_UNDW"."FALTA" IS 'Fecha alta registro';
   COMMENT ON COLUMN "AXIS"."CITAMEDICA_UNDW"."CUSUMOD" IS 'C�digo usuario modificacion registro';
   COMMENT ON COLUMN "AXIS"."CITAMEDICA_UNDW"."FMODIFI" IS 'Fecha modificacion registro';
   COMMENT ON COLUMN "AXIS"."CITAMEDICA_UNDW"."CESTADO" IS 'C�digo estado de la cita medica (V.F: 8001025)';
   COMMENT ON COLUMN "AXIS"."CITAMEDICA_UNDW"."CAIS" IS 'Si es extraido de AIS - Allfinanz (0/1) ';
   COMMENT ON TABLE "AXIS"."CITAMEDICA_UNDW"  IS 'Tabla de beneficiarios - citas medicas';
  GRANT INSERT ON "AXIS"."CITAMEDICA_UNDW" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CITAMEDICA_UNDW" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CITAMEDICA_UNDW" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."CITAMEDICA_UNDW" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CITAMEDICA_UNDW" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CITAMEDICA_UNDW" TO "PROGRAMADORESCSI";
