--------------------------------------------------------
--  DDL for Table MIG_PRPC
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_PRPC" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"PRODUCTO" NUMBER, 
	"SSEGURO" NUMBER, 
	"POLIZA" VARCHAR2(50 BYTE), 
	"NMOVIMIENTO" NUMBER(4,0), 
	"NRIESGO" NUMBER(6,0), 
	"RECIBO" VARCHAR2(50 BYTE), 
	"GARANTIA" NUMBER(5,0), 
	"FCALCULO" DATE, 
	"FECHA_INICIO" DATE, 
	"IPRPC" NUMBER(17,2), 
	"IPRICOM" NUMBER(17,2), 
	"IPPNAPRIMA" NUMBER(17,2), 
	"IPPNCCOMIS" NUMBER(17,2), 
	"PREA" NUMBER(5,2), 
	"PCOM" NUMBER(5,2), 
	"ICOMIS" NUMBER(17,2), 
	"IPDEVRC" NUMBER(17,2), 
	"IPNCSRC" NUMBER(17,2), 
	"ICOMRC" NUMBER(17,2), 
	"ICNCSRC" NUMBER(17,2), 
	"CTRAMO" NUMBER(3,0), 
	"MIG_PK" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_PRPC"."NCARGA" IS 'N�mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_PRPC"."CESTMIG" IS 'Estado del registro';
   COMMENT ON COLUMN "AXIS"."MIG_PRPC"."PRODUCTO" IS 'Clave de producto iAxis ';
   COMMENT ON COLUMN "AXIS"."MIG_PRPC"."POLIZA" IS 'Id p�liza en sistema origen (MIG_PK MIG_SEGUROS)';
   COMMENT ON COLUMN "AXIS"."MIG_PRPC"."NMOVIMIENTO" IS 'N�mero de movimiento';
   COMMENT ON COLUMN "AXIS"."MIG_PRPC"."NRIESGO" IS 'N�mero de riesgo';
   COMMENT ON COLUMN "AXIS"."MIG_PRPC"."RECIBO" IS 'Id recibo en sistema origen (MIG_PK MIG_RECIBOS)';
   COMMENT ON COLUMN "AXIS"."MIG_PRPC"."GARANTIA" IS 'C�digo de garant�a iAXIs';
   COMMENT ON COLUMN "AXIS"."MIG_PRPC"."FCALCULO" IS 'Fecha de c�lculo de la provisi�n';
   COMMENT ON COLUMN "AXIS"."MIG_PRPC"."FECHA_INICIO" IS 'Fecha inicio  efecto';
   COMMENT ON COLUMN "AXIS"."MIG_PRPC"."IPRPC" IS 'Importe de provisi�n';
   COMMENT ON COLUMN "AXIS"."MIG_PRPC"."IPRICOM" IS 'Importe Prima neta';
   COMMENT ON COLUMN "AXIS"."MIG_PRPC"."IPPNAPRIMA" IS 'Prima pendiente de cobro no consumida';
   COMMENT ON COLUMN "AXIS"."MIG_PRPC"."IPPNCCOMIS" IS 'Comisi�n pendiente de cobro no consumida.';
   COMMENT ON COLUMN "AXIS"."MIG_PRPC"."PREA" IS 'Porcentaje reaseguro';
   COMMENT ON COLUMN "AXIS"."MIG_PRPC"."PCOM" IS 'Porcentaje comisi�n  anulaci�n (seg�n campo ctramo, 1- 3 meses = 25%, 2 � 3 a 6 meses=50%, 3- mayor que 6 meses = 100%). Se utiliza para calcular el campo IPPPC';
   COMMENT ON COLUMN "AXIS"."MIG_PRPC"."ICOMIS" IS 'Importe comisi�n';
   COMMENT ON COLUMN "AXIS"."MIG_PRPC"."IPDEVRC" IS 'Prima reaseguro cedido';
   COMMENT ON COLUMN "AXIS"."MIG_PRPC"."IPNCSRC" IS 'Prima no consumida reaseguro cedido';
   COMMENT ON COLUMN "AXIS"."MIG_PRPC"."ICOMRC" IS 'Comisi�n  reaseguro cedido';
   COMMENT ON COLUMN "AXIS"."MIG_PRPC"."ICNCSRC" IS 'Comisi�n  no consumida reaseguro cedido';
   COMMENT ON COLUMN "AXIS"."MIG_PRPC"."CTRAMO" IS 'Tramo antig�edad aplicable en meses (valor fijo: 1084)';
  GRANT DELETE ON "AXIS"."MIG_PRPC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_PRPC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_PRPC" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_PRPC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_PRPC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_PRPC" TO "PROGRAMADORESCSI";
