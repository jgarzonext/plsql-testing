--------------------------------------------------------
--  DDL for Table PAGOS_MASIVOSDET
--------------------------------------------------------

  CREATE TABLE "AXIS"."PAGOS_MASIVOSDET" 
   (	"SPAGMAS" NUMBER(10,0), 
	"NUMLIN" NUMBER(6,0), 
	"SPERSON" NUMBER(10,0), 
	"SSEGURO" NUMBER, 
	"NRECIBO" NUMBER(9,0), 
	"FCAMBIO" DATE, 
	"IIMPPRO" NUMBER, 
	"IIMPOPE" NUMBER, 
	"IIMPINS" NUMBER, 
	"CULTPAG" NUMBER(1,0), 
	"CTRATAR" NUMBER(1,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOSDET"."SPAGMAS" IS 'Secuencia del pago masivo';
   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOSDET"."NUMLIN" IS 'N�mero linea pago masivo';
   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOSDET"."SPERSON" IS 'Secuencia persona pagador';
   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOSDET"."SSEGURO" IS 'Secuencia del seguro';
   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOSDET"."NRECIBO" IS 'N�mero del recibo';
   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOSDET"."FCAMBIO" IS 'Fecha de cambio';
   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOSDET"."IIMPPRO" IS 'Importe del producto';
   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOSDET"."IIMPOPE" IS 'Importe de la operaci�n';
   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOSDET"."IIMPINS" IS 'Importe de la instalaci�n';
   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOSDET"."CULTPAG" IS 'Indicador �ltimo pago 0=No, 1=Si';
   COMMENT ON COLUMN "AXIS"."PAGOS_MASIVOSDET"."CTRATAR" IS '0-No tratado, 1-Tratado';
   COMMENT ON TABLE "AXIS"."PAGOS_MASIVOSDET"  IS 'Registro totalizado de las cargas Pagos Masivos';
  GRANT UPDATE ON "AXIS"."PAGOS_MASIVOSDET" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PAGOS_MASIVOSDET" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PAGOS_MASIVOSDET" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PAGOS_MASIVOSDET" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PAGOS_MASIVOSDET" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PAGOS_MASIVOSDET" TO "PROGRAMADORESCSI";
