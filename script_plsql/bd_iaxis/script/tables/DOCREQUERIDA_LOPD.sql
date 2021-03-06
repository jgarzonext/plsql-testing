--------------------------------------------------------
--  DDL for Table DOCREQUERIDA_LOPD
--------------------------------------------------------

  CREATE TABLE "AXIS"."DOCREQUERIDA_LOPD" 
   (	"SEQDOCU" NUMBER(10,0), 
	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"IDDOCGEDOX" NUMBER(8,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA_LOPD"."SEQDOCU" IS 'N�mero secuencial de documento';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA_LOPD"."SSEGURO" IS 'N�mero secuencial de seguro';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA_LOPD"."NMOVIMI" IS 'N�mero de movimiento';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA_LOPD"."IDDOCGEDOX" IS 'Identificador del GEDOX';
   COMMENT ON TABLE "AXIS"."DOCREQUERIDA_LOPD"  IS 'Tabla real de documentaci�n requerida de un contrato LOPD';
  GRANT UPDATE ON "AXIS"."DOCREQUERIDA_LOPD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DOCREQUERIDA_LOPD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DOCREQUERIDA_LOPD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DOCREQUERIDA_LOPD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DOCREQUERIDA_LOPD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DOCREQUERIDA_LOPD" TO "PROGRAMADORESCSI";
