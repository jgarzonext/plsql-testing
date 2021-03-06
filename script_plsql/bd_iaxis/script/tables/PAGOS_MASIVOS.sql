--------------------------------------------------------
--  DDL for Table PAGOS_MASIVOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."PAGOS_MASIVOS" 
   (	"CAGENTE" NUMBER, 
	"SPROCES" NUMBER, 
	"FCARGA" DATE, 
	"TFICHERO" VARCHAR2(1000 BYTE), 
	"SPRODUC" NUMBER(8,0), 
	"IIMPPRO" NUMBER, 
	"CMONEOP" NUMBER(4,0), 
	"IIMPOPE" NUMBER, 
	"SEQCAJA" NUMBER(10,0), 
	"SPAGMAS" NUMBER(10,0), 
	"IIMPINS" NUMBER, 
	"IIMPTOT" NUMBER, 
	"IAUTOLIQ" NUMBER, 
	"IAUTOLIQP" NUMBER, 
	"IDIFCAMBIO" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOS"."CAGENTE" IS 'Codigo de la empresa';
   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOS"."SPROCES" IS 'C�digo de Proceso Masivo';
   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOS"."FCARGA" IS 'Fecha de la carga';
   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOS"."TFICHERO" IS 'Nombre del fichero';
   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOS"."SPRODUC" IS 'C�digo del Producto';
   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOS"."IIMPPRO" IS 'Importe total del producto';
   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOS"."CMONEOP" IS 'Moneda de la operaci�n';
   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOS"."IIMPOPE" IS 'Importe total de la operaci�n';
   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOS"."SEQCAJA" IS 'Clave de caja. Si est� informado es que se ha pagado';
   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOS"."SPAGMAS" IS 'Secuencia del pago masivo';
   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOS"."IIMPINS" IS 'Importe de la instalaci�n';
   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOS"."IIMPTOT" IS 'Importe total del fichero en moneda pago';
   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOS"."IAUTOLIQ" IS 'Imp. autoliq. comisiones Intermediario. Por fichero cobrado';
   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOS"."IAUTOLIQP" IS 'Imp. autoliq. comisiones Partner. Por fichero cobrado';
   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOS"."IDIFCAMBIO" IS 'Imp. diferencial cambio por fichero cobrado';
   COMMENT ON TABLE "AXIS"."PAGOS_MASIVOS"  IS 'Registro totalizado de las cargas Pagos Masivos';
  GRANT UPDATE ON "AXIS"."PAGOS_MASIVOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PAGOS_MASIVOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PAGOS_MASIVOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PAGOS_MASIVOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PAGOS_MASIVOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PAGOS_MASIVOS" TO "PROGRAMADORESCSI";
