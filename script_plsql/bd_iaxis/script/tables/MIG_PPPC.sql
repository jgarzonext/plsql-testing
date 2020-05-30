--------------------------------------------------------
--  DDL for Table MIG_PPPC
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_PPPC" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"PRODUCTO" NUMBER, 
	"POLIZA" VARCHAR2(50 BYTE), 
	"SSEGURO" NUMBER, 
	"NMOVIMIENTO" NUMBER(4,0), 
	"NRIESGO" NUMBER(6,0), 
	"RECIBO" VARCHAR2(50 BYTE), 
	"GARANTIA" NUMBER(5,0), 
	"FCALCULO" DATE, 
	"IPPPC" NUMBER(17,2), 
	"IPRICOM" NUMBER(17,2), 
	"IPPNCPRIMA" NUMBER(17,2), 
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

   COMMENT ON COLUMN "AXIS"."MIG_PPPC"."PRODUCTO" IS 'Clave de producto iAxis ';
   COMMENT ON COLUMN "AXIS"."MIG_PPPC"."POLIZA" IS 'Id p¿liza en sistema origen';
   COMMENT ON COLUMN "AXIS"."MIG_PPPC"."NMOVIMIENTO" IS 'N¿mero de movimiento';
   COMMENT ON COLUMN "AXIS"."MIG_PPPC"."NRIESGO" IS 'N¿mero de riesgo';
   COMMENT ON COLUMN "AXIS"."MIG_PPPC"."RECIBO" IS 'Id recibo en sistema origen';
   COMMENT ON COLUMN "AXIS"."MIG_PPPC"."GARANTIA" IS 'C¿digo de garant¿a iAXIs';
   COMMENT ON COLUMN "AXIS"."MIG_PPPC"."FCALCULO" IS 'Fecha de c¿lculo de la provisi¿n';
   COMMENT ON COLUMN "AXIS"."MIG_PPPC"."IPPPC" IS 'Provisi¿n de prima pendiente  de cobro';
   COMMENT ON COLUMN "AXIS"."MIG_PPPC"."IPRICOM" IS 'Importe Prima ';
   COMMENT ON COLUMN "AXIS"."MIG_PPPC"."IPPNCPRIMA" IS 'Prima pendiente de cobro no consumida';
   COMMENT ON COLUMN "AXIS"."MIG_PPPC"."IPPNCCOMIS" IS 'Comisi¿n pendiente de cobro no consumida.';
   COMMENT ON COLUMN "AXIS"."MIG_PPPC"."PREA" IS 'Porcentaje reaseguro';
   COMMENT ON COLUMN "AXIS"."MIG_PPPC"."PCOM" IS 'Porcentaje comisi¿n  anulaci¿n (seg¿n campo ctramo, 1- 3 meses = 25%, 2 ¿ 3 a 6 meses=50%, 3- mayor que 6 meses = 100%). Se utiliza para calcular el campo IPPPC';
   COMMENT ON COLUMN "AXIS"."MIG_PPPC"."ICOMIS" IS 'Importe comisi¿n';
   COMMENT ON COLUMN "AXIS"."MIG_PPPC"."IPDEVRC" IS 'Prima reaseguro cedido';
   COMMENT ON COLUMN "AXIS"."MIG_PPPC"."IPNCSRC" IS 'Prima no consumida reaseguro cedido';
   COMMENT ON COLUMN "AXIS"."MIG_PPPC"."ICOMRC" IS 'Comisi¿n  reaseguro cedido';
   COMMENT ON COLUMN "AXIS"."MIG_PPPC"."ICNCSRC" IS 'Comisi¿n  no consumida reaseguro cedido';
   COMMENT ON COLUMN "AXIS"."MIG_PPPC"."CTRAMO" IS 'Tramo antig¿edad aplicable en meses (valor fijo: 1084)';
   COMMENT ON TABLE "AXIS"."MIG_PPPC"  IS 'Fichero con los datos de PPPC';
  GRANT UPDATE ON "AXIS"."MIG_PPPC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_PPPC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_PPPC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_PPPC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_PPPC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_PPPC" TO "PROGRAMADORESCSI";
