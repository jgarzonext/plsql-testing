--------------------------------------------------------
--  DDL for Table AUTDISRIESGOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."AUTDISRIESGOS" 
   (	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"NMOVIMI" NUMBER(4,0), 
	"CVERSION" VARCHAR2(11 BYTE), 
	"CDISPOSITIVO" VARCHAR2(10 BYTE), 
	"CPROPDISP" VARCHAR2(8 BYTE), 
	"IVALDISP" NUMBER, 
	"FINICONTRATO" DATE, 
	"FFINCONTRATO" DATE, 
	"NCONTRATO" NUMBER(15,0), 
	"TDESCDISP" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AUTDISRIESGOS"."SSEGURO" IS 'Secuencial de seguro';
   COMMENT ON COLUMN "AXIS"."AUTDISRIESGOS"."NRIESGO" IS 'Numero de riesgo';
   COMMENT ON COLUMN "AXIS"."AUTDISRIESGOS"."NMOVIMI" IS 'Numero de movimiento';
   COMMENT ON COLUMN "AXIS"."AUTDISRIESGOS"."CVERSION" IS 'Codigo de la version del vehiculo';
   COMMENT ON COLUMN "AXIS"."AUTDISRIESGOS"."CDISPOSITIVO" IS 'Codigo Dispositivo';
   COMMENT ON COLUMN "AXIS"."AUTDISRIESGOS"."CPROPDISP" IS 'Propietario dispositivo';
   COMMENT ON COLUMN "AXIS"."AUTDISRIESGOS"."IVALDISP" IS 'Valor dispositivo';
   COMMENT ON COLUMN "AXIS"."AUTDISRIESGOS"."FINICONTRATO" IS 'Fecha inicio contrato';
   COMMENT ON COLUMN "AXIS"."AUTDISRIESGOS"."FFINCONTRATO" IS 'Fecha fin contrato';
   COMMENT ON COLUMN "AXIS"."AUTDISRIESGOS"."NCONTRATO" IS 'n. contrato';
   COMMENT ON COLUMN "AXIS"."AUTDISRIESGOS"."TDESCDISP" IS 'Desc dispositivo';
   COMMENT ON TABLE "AXIS"."AUTDISRIESGOS"  IS 'Almacena los dispositivos de seguridad que tiene una p�liza de autos';
  GRANT INSERT ON "AXIS"."AUTDISRIESGOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AUTDISRIESGOS" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."AUTDISRIESGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUTDISRIESGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUTDISRIESGOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AUTDISRIESGOS" TO "PROGRAMADORESCSI";
