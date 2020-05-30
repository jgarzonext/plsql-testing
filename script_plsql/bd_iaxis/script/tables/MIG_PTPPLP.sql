--------------------------------------------------------
--  DDL for Table MIG_PTPPLP
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_PTPPLP" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"PRODUCTO" NUMBER, 
	"POLIZA" VARCHAR2(50 BYTE), 
	"SSEGURO" NUMBER, 
	"SINESTRO" VARCHAR2(50 BYTE), 
	"NSINIES" VARCHAR2(14 BYTE), 
	"FCALCULO" DATE, 
	"IPPLPSD" NUMBER(17,2), 
	"IPPLPRC" NUMBER(17,2), 
	"IVALBRUTO" NUMBER(13,2), 
	"IVALPAGO" NUMBER(13,2), 
	"IPPL" NUMBER(17,2), 
	"IPPP" NUMBER(17,2), 
	"MIG_PK" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_PTPPLP"."NCARGA" IS 'N¿mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_PTPPLP"."CESTMIG" IS 'Estado del registro';
   COMMENT ON COLUMN "AXIS"."MIG_PTPPLP"."PRODUCTO" IS 'Clave de producto iAxis ';
   COMMENT ON COLUMN "AXIS"."MIG_PTPPLP"."POLIZA" IS 'Id p¿liza en sistema origen (MIG_PK MIG_SEGUROS)';
   COMMENT ON COLUMN "AXIS"."MIG_PTPPLP"."SSEGURO" IS 'N¿mero consecutivo de seguro asignado 0, lo calcula el proceso de migraci¿n';
   COMMENT ON COLUMN "AXIS"."MIG_PTPPLP"."SINESTRO" IS 'Id de siniestro en sistema origen (MIG_PK MIG_SIN_SINIESTRO)';
   COMMENT ON COLUMN "AXIS"."MIG_PTPPLP"."NSINIES" IS 'Numero Siniestro';
   COMMENT ON COLUMN "AXIS"."MIG_PTPPLP"."FCALCULO" IS 'Fecha de c¿lculo de la provisi¿n';
   COMMENT ON COLUMN "AXIS"."MIG_PTPPLP"."IPPLPSD" IS 'Importe prestaci¿n pendiente de liquidaci¿n  pendiente de pago';
   COMMENT ON COLUMN "AXIS"."MIG_PTPPLP"."IPPLPRC" IS 'Importe prestaci¿n pendiente de liquidaci¿n  pendiente de pago reaseguro cedido';
   COMMENT ON COLUMN "AXIS"."MIG_PTPPLP"."IVALBRUTO" IS 'Valor bruto';
   COMMENT ON COLUMN "AXIS"."MIG_PTPPLP"."IVALPAGO" IS 'Valor pago';
   COMMENT ON COLUMN "AXIS"."MIG_PTPPLP"."IPPL" IS 'Importe provisi¿n pendiente de liquidar';
   COMMENT ON COLUMN "AXIS"."MIG_PTPPLP"."IPPP" IS 'Importe provisi¿n pendiente de pagar';
   COMMENT ON TABLE "AXIS"."MIG_PTPPLP"  IS 'Fichero con los datos de PTPPLP (Provisiones de Prestaciones Pendientes de Liquidaci¿n o Pago)';
  GRANT UPDATE ON "AXIS"."MIG_PTPPLP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_PTPPLP" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_PTPPLP" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_PTPPLP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_PTPPLP" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_PTPPLP" TO "PROGRAMADORESCSI";
