--------------------------------------------------------
--  DDL for Table MIG_TRAMOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_TRAMOS" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"NVERSIO" NUMBER(2,0), 
	"SCONTRA" NUMBER(6,0), 
	"CTRAMO" NUMBER(2,0), 
	"ITOTTRA" NUMBER, 
	"NPLENOS" NUMBER(6,0), 
	"CFREBOR" NUMBER(2,0), 
	"PLOCAL" NUMBER(5,2), 
	"IXLPRIO" NUMBER, 
	"IXLEXCE" NUMBER, 
	"PSLPRIO" NUMBER(5,2), 
	"PSLEXCE" NUMBER(5,2), 
	"NCESION" NUMBER(6,0), 
	"FULTBOR" DATE, 
	"IMAXPLO" NUMBER, 
	"NORDEN" NUMBER(2,0), 
	"NSEGCON" NUMBER(6,0), 
	"NSEGVER" NUMBER(2,0), 
	"IMINXL" NUMBER, 
	"IDEPXL" NUMBER, 
	"NCTRXL" NUMBER(6,0), 
	"NVERXL" NUMBER(2,0), 
	"PTASAXL" NUMBER(6,0), 
	"IPMD" NUMBER, 
	"CFREPMD" NUMBER(2,0), 
	"CAPLIXL" NUMBER(1,0), 
	"PLIMGAS" NUMBER(5,2), 
	"PLIMINX" NUMBER(5,2), 
	"IDAA" NUMBER, 
	"ILAA" NUMBER, 
	"CTPRIMAXL" NUMBER(1,0), 
	"IPRIMAFIJAXL" NUMBER, 
	"IPRIMAESTIMADA" NUMBER, 
	"CAPLICTASAXL" NUMBER(1,0), 
	"CTIPTASAXL" NUMBER(1,0), 
	"CTRAMOTASAXL" NUMBER(5,0), 
	"PCTPDXL" NUMBER(5,2), 
	"CFORPAGPDXL" NUMBER(1,0), 
	"PCTMINXL" NUMBER(5,2), 
	"PCTPB" NUMBER(5,2), 
	"NANYOSLOSS" NUMBER(2,0), 
	"CLOSSCORRIDOR" NUMBER(5,0), 
	"CCAPPEDRATIO" NUMBER(5,0), 
	"CREPOS" NUMBER(5,0), 
	"IBONOREC" NUMBER, 
	"IMPAVISO" NUMBER, 
	"IMPCONTADO" NUMBER, 
	"PCTCONTADO" NUMBER(5,2), 
	"PCTGASTOS" NUMBER(5,2), 
	"PTASAAJUSTE" NUMBER(5,2), 
	"ICAPCOASEG" NUMBER, 
	"PREEST" NUMBER, 
	"ICOSTOFIJO" NUMBER, 
	"PCOMISINTERM" NUMBER, 
	"NARRASTRECONT" NUMBER, 
	"PTRAMO" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."NCARGA" IS 'Número de carga';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."CESTMIG" IS 'Estado del registro valor inicial 1';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."MIG_PK" IS 'Clave única de MIG_TRAMOS';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."MIG_FK" IS 'Clave externa de MIG_CONTRATOS';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."NVERSIO" IS 'Versión del tramo ( 0 en este caso)';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."SCONTRA" IS 'Secuencia de contrato ( 0 en este caso)';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."CTRAMO" IS 'Código de tramo';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."ITOTTRA" IS 'Importe tramo';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."NPLENOS" IS 'Número de plenos';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."CFREBOR" IS 'Código de frecuencia borderour';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."PLOCAL" IS 'Porcentaje local';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."IXLPRIO" IS 'Importe XL prioridad';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."IXLEXCE" IS 'Importe XL exceso';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."PSLPRIO" IS 'Porcentaje límite prioridad';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."PSLEXCE" IS 'Porcentaje límite exceso';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."NCESION" IS 'Número de cesión (Por defecto 0)';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."FULTBOR" IS 'Fecha último borderour ';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."NORDEN" IS 'Orden del tramo';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."IMINXL" IS 'Prima mínima para contratos XL';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."IDEPXL" IS 'Prima de depósito para contratos XL';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."NCTRXL" IS 'Contracte XL de protecció.';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."NVERXL" IS 'Versió Ctr. XL de protecció.';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."PTASAXL" IS 'Porcentaje de la tasa aplicable para contratos XL';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."IPMD" IS 'Importe Prima Mínima Depósito XL';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."CFREPMD" IS 'Código frecuencia pago PMD';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."CAPLIXL" IS 'Aplica o no el límite por contrato del XL ( 0-Sí, 1-No)';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."PLIMGAS" IS 'Porcentaje de aumento del límite XL por gastos';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."PLIMINX" IS 'Porcentaje de límite de aplicación de la indexación';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."IDAA" IS 'Deducible anual';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."ILAA" IS 'Límite agregado anual';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."CTPRIMAXL" IS 'Tipo Prima XL  (cvalor=342)';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."IPRIMAFIJAXL" IS 'Prima fija XL';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."IPRIMAESTIMADA" IS 'Prima Estimada para el tramo';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."CAPLICTASAXL" IS 'Campo aplicación tasa XL (cvalor=343)';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."CTIPTASAXL" IS 'Tipo tasa XL (cvalor=344)';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."CTRAMOTASAXL" IS 'Tramo de tasa variable XL (Tabla CLAUSULAS_REAS)';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."PCTPDXL" IS '% Prima Depósito';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."CFORPAGPDXL" IS 'Forma pago prima de depósito XL';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."PCTMINXL" IS '% Prima Mínima XL';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."PCTPB" IS '% PB';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."NANYOSLOSS" IS 'Años Loss Corridor';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."CLOSSCORRIDOR" IS 'Código cláusula Loss Corridor (Tabla CLAUSULAS_REAS)';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."CCAPPEDRATIO" IS 'Código cláusula Capped Ratio (Tabla CLAUSULAS_REAS)';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."CREPOS" IS 'Código Reposición Xl (Tabla REPOSICIONES)';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."IBONOREC" IS 'Bono Reclamación';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."IMPAVISO" IS 'Importe Avisos Siniestro';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."IMPCONTADO" IS 'Importe pagos contado';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."PCTCONTADO" IS '% Pagos Contado';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."PCTGASTOS" IS 'Gastos';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."PTASAAJUSTE" IS 'Tasa ajuste';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."ICAPCOASEG" IS 'Capacidad según coaseguro';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."PREEST" IS 'Porcentaje de restablecimiento del tramo';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."ICOSTOFIJO" IS 'Importe del costo fijo de la capa/tramo para el contrato-versión';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."PCOMISINTERM" IS 'Porcentaje de la comisión de intermediación definida para la capa/tramo del contrato-versión';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."NARRASTRECONT" IS 'Para cálculo de Comisión de Utilidades';
   COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."PTRAMO" IS 'Porcentaje Tramo';
   COMMENT ON TABLE "AXIS"."MIG_TRAMOS"  IS 'Fichero con la información de los tramos del contrato de reaseguro:';
  GRANT DELETE ON "AXIS"."MIG_TRAMOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_TRAMOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_TRAMOS" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_TRAMOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_TRAMOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_TRAMOS" TO "PROGRAMADORESCSI";
