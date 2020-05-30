--------------------------------------------------------
--  DDL for Table DOCREQUERIDA_LOPD_BENESPSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."DOCREQUERIDA_LOPD_BENESPSEG" 
   (	"SEQDOCU" NUMBER(10,0), 
	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"NRIESGO" NUMBER(6,0), 
	"IDDOCGEDOX" NUMBER(8,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA_LOPD_BENESPSEG"."SEQDOCU" IS 'N�mero secuencial de documento';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA_LOPD_BENESPSEG"."SSEGURO" IS 'N�mero secuencial de seguro';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA_LOPD_BENESPSEG"."NMOVIMI" IS 'N�mero de movimiento';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA_LOPD_BENESPSEG"."NRIESGO" IS 'N�mero de riesgo';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA_LOPD_BENESPSEG"."IDDOCGEDOX" IS 'Identificador del GEDOX';
   COMMENT ON TABLE "AXIS"."DOCREQUERIDA_LOPD_BENESPSEG"  IS 'Tabla real de documentaci�n requerida de los beneficiarios de un contrato LOPD';
  GRANT UPDATE ON "AXIS"."DOCREQUERIDA_LOPD_BENESPSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DOCREQUERIDA_LOPD_BENESPSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DOCREQUERIDA_LOPD_BENESPSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DOCREQUERIDA_LOPD_BENESPSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DOCREQUERIDA_LOPD_BENESPSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DOCREQUERIDA_LOPD_BENESPSEG" TO "PROGRAMADORESCSI";
