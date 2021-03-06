--------------------------------------------------------
--  DDL for Table ESTENFERMEDADES_UNDW
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTENFERMEDADES_UNDW" 
   (	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"NMOVIMI" NUMBER(4,0), 
	"CEMPRES" NUMBER(5,0), 
	"SORDEN" NUMBER, 
	"NORDEN" NUMBER, 
	"CINDEX" NUMBER, 
	"CODENF" VARCHAR2(10 BYTE), 
	"DESENF" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESTENFERMEDADES_UNDW"."SSEGURO" IS 'Identificador del seguro.';
   COMMENT ON COLUMN "AXIS"."ESTENFERMEDADES_UNDW"."NRIESGO" IS 'Numero de riesgo.';
   COMMENT ON COLUMN "AXIS"."ESTENFERMEDADES_UNDW"."NMOVIMI" IS 'Numero de movimiento.';
   COMMENT ON COLUMN "AXIS"."ESTENFERMEDADES_UNDW"."CEMPRES" IS 'C�digo de empresa.';
   COMMENT ON COLUMN "AXIS"."ESTENFERMEDADES_UNDW"."SORDEN" IS 'Identificador del caso.';
   COMMENT ON COLUMN "AXIS"."ESTENFERMEDADES_UNDW"."NORDEN" IS 'Orden';
   COMMENT ON COLUMN "AXIS"."ESTENFERMEDADES_UNDW"."CINDEX" IS 'Indice Enfermedad';
   COMMENT ON COLUMN "AXIS"."ESTENFERMEDADES_UNDW"."CODENF" IS 'C�digo de la enfermedad.';
   COMMENT ON COLUMN "AXIS"."ESTENFERMEDADES_UNDW"."DESENF" IS 'Descripci�n de la enfermedad.';
   COMMENT ON TABLE "AXIS"."ESTENFERMEDADES_UNDW"  IS 'Enfermedades Underwriting';
  GRANT UPDATE ON "AXIS"."ESTENFERMEDADES_UNDW" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTENFERMEDADES_UNDW" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTENFERMEDADES_UNDW" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTENFERMEDADES_UNDW" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTENFERMEDADES_UNDW" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTENFERMEDADES_UNDW" TO "PROGRAMADORESCSI";
