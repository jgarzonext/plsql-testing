--------------------------------------------------------
--  DDL for Table PRPC
--------------------------------------------------------

  CREATE TABLE "AXIS"."PRPC" 
   (	"CEMPRES" NUMBER(2,0), 
	"FCALCUL" DATE, 
	"SPROCES" NUMBER, 
	"CRAMDGS" NUMBER(4,0), 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"SSEGURO" NUMBER, 
	"NRECIBO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"FINIEFE" DATE, 
	"CGARANT" NUMBER(4,0), 
	"NRIESGO" NUMBER(6,0), 
	"IPRPC" NUMBER(17,2), 
	"CERROR" NUMBER(2,0), 
	"IPRIMCOM" NUMBER(17,2), 
	"IPPNAPRIMA" NUMBER(17,2), 
	"IPPNACOMIS" NUMBER(17,2), 
	"PREA" NUMBER(5,2), 
	"PCOM" NUMBER(5,2), 
	"ICOMIS" NUMBER(17,2), 
	"IPDEVRC" NUMBER(17,2), 
	"IPNCSRC" NUMBER(17,2), 
	"ICOMRC" NUMBER(17,2), 
	"ICNCSRC" NUMBER(17,2), 
	"CTRAMO" NUMBER(3,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PRPC"."CEMPRES" IS 'Código empresa';
   COMMENT ON COLUMN "AXIS"."PRPC"."FCALCUL" IS 'Fecha de cálculo';
   COMMENT ON COLUMN "AXIS"."PRPC"."SPROCES" IS 'Identificador de proceso';
   COMMENT ON COLUMN "AXIS"."PRPC"."CRAMDGS" IS 'Código ramo DGS';
   COMMENT ON COLUMN "AXIS"."PRPC"."CRAMO" IS 'Código ramo';
   COMMENT ON COLUMN "AXIS"."PRPC"."CMODALI" IS 'Código modalidad';
   COMMENT ON COLUMN "AXIS"."PRPC"."CTIPSEG" IS 'Código tipo de seguro';
   COMMENT ON COLUMN "AXIS"."PRPC"."CCOLECT" IS 'Código de colectividad';
   COMMENT ON COLUMN "AXIS"."PRPC"."SSEGURO" IS 'Número consecutivo de seguro asignado automáticamente.';
   COMMENT ON COLUMN "AXIS"."PRPC"."NRECIBO" IS 'Número de recibo';
   COMMENT ON COLUMN "AXIS"."PRPC"."NMOVIMI" IS 'Número de movimiento';
   COMMENT ON COLUMN "AXIS"."PRPC"."FINIEFE" IS 'Fecha inició efecto';
   COMMENT ON COLUMN "AXIS"."PRPC"."CGARANT" IS 'Código de garantía';
   COMMENT ON COLUMN "AXIS"."PRPC"."NRIESGO" IS 'Número de riesgo';
   COMMENT ON COLUMN "AXIS"."PRPC"."IPRPC" IS 'Importe provisión';
   COMMENT ON COLUMN "AXIS"."PRPC"."CERROR" IS 'Código de error';
   COMMENT ON COLUMN "AXIS"."PRPC"."IPRIMCOM" IS 'Prima neta';
   COMMENT ON COLUMN "AXIS"."PRPC"."IPPNAPRIMA" IS 'Prima no consumida';
   COMMENT ON COLUMN "AXIS"."PRPC"."IPPNACOMIS" IS 'Comisión no consumida';
   COMMENT ON COLUMN "AXIS"."PRPC"."PREA" IS 'Porcentaje de reaseguro';
   COMMENT ON COLUMN "AXIS"."PRPC"."PCOM" IS 'Porcentaje de comisión';
   COMMENT ON COLUMN "AXIS"."PRPC"."ICOMIS" IS 'Importe comisión';
   COMMENT ON COLUMN "AXIS"."PRPC"."IPDEVRC" IS 'Prima reaseguro cedido';
   COMMENT ON COLUMN "AXIS"."PRPC"."IPNCSRC" IS 'Prima no consumida reaseguro cedido';
   COMMENT ON COLUMN "AXIS"."PRPC"."ICOMRC" IS 'Comisión reaseguro cedido';
   COMMENT ON COLUMN "AXIS"."PRPC"."ICNCSRC" IS 'Comisión no consumida reaseguro cedido';
   COMMENT ON COLUMN "AXIS"."PRPC"."CTRAMO" IS 'Tramo antigüedad aplicable (en meses) (v.f. 1084)';
   COMMENT ON TABLE "AXIS"."PRPC"  IS 'PRPC - Provisión de Recibos Pendientes de Cobro (según descripción excel de ejemplo de TRQ)';
  GRANT UPDATE ON "AXIS"."PRPC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRPC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PRPC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PRPC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRPC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PRPC" TO "PROGRAMADORESCSI";
