--------------------------------------------------------
--  DDL for Table SIN_IMP_CALCULO_LOG
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_IMP_CALCULO_LOG" 
   (	"SIMPLOG" NUMBER, 
	"SIDEPAG" NUMBER(8,0), 
	"SGESTIO" NUMBER(10,0), 
	"ISINRET" NUMBER, 
	"CTIPPER" NUMBER(3,0), 
	"CREGFISCAL" NUMBER(3,0), 
	"CPAIS" NUMBER(3,0), 
	"CPROVIN" NUMBER, 
	"CPOBLAC" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_IMP_CALCULO_LOG"."SIMPLOG" IS 'Clave del calculo';
   COMMENT ON COLUMN "AXIS"."SIN_IMP_CALCULO_LOG"."SIDEPAG" IS 'Secuencia identificador pago';
   COMMENT ON COLUMN "AXIS"."SIN_IMP_CALCULO_LOG"."SGESTIO" IS 'Identificador gesti�n';
   COMMENT ON COLUMN "AXIS"."SIN_IMP_CALCULO_LOG"."ISINRET" IS 'Importe sin retenci�n';
   COMMENT ON COLUMN "AXIS"."SIN_IMP_CALCULO_LOG"."CTIPPER" IS 'Tipo persona';
   COMMENT ON COLUMN "AXIS"."SIN_IMP_CALCULO_LOG"."CREGFISCAL" IS 'Regimen fiscal';
   COMMENT ON COLUMN "AXIS"."SIN_IMP_CALCULO_LOG"."CPAIS" IS 'Pa�s';
   COMMENT ON COLUMN "AXIS"."SIN_IMP_CALCULO_LOG"."CPROVIN" IS 'Provincia';
   COMMENT ON COLUMN "AXIS"."SIN_IMP_CALCULO_LOG"."CPOBLAC" IS 'Poblaci�n';
   COMMENT ON TABLE "AXIS"."SIN_IMP_CALCULO_LOG"  IS 'Log de los impuestos calculados';
  GRANT UPDATE ON "AXIS"."SIN_IMP_CALCULO_LOG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_IMP_CALCULO_LOG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_IMP_CALCULO_LOG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_IMP_CALCULO_LOG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_IMP_CALCULO_LOG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_IMP_CALCULO_LOG" TO "PROGRAMADORESCSI";