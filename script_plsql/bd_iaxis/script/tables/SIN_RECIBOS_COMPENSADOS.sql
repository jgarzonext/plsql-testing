--------------------------------------------------------
--  DDL for Table SIN_RECIBOS_COMPENSADOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_RECIBOS_COMPENSADOS" 
   (	"NSINIES" VARCHAR2(14 BYTE), 
	"SSEGURO" NUMBER, 
	"SIDEPAG_OLD" NUMBER, 
	"NRECIBO" NUMBER, 
	"SIDEPAG_NEW" NUMBER, 
	"IRESTOREC" NUMBER, 
	"CESTCOMP" VARCHAR2(1 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_RECIBOS_COMPENSADOS"."NSINIES" IS 'Numero de siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_RECIBOS_COMPENSADOS"."SSEGURO" IS 'Clave seguros';
   COMMENT ON COLUMN "AXIS"."SIN_RECIBOS_COMPENSADOS"."SIDEPAG_OLD" IS 'Pago original';
   COMMENT ON COLUMN "AXIS"."SIN_RECIBOS_COMPENSADOS"."NRECIBO" IS 'Numero de recibo';
   COMMENT ON COLUMN "AXIS"."SIN_RECIBOS_COMPENSADOS"."SIDEPAG_NEW" IS 'Pago de compensacion';
   COMMENT ON COLUMN "AXIS"."SIN_RECIBOS_COMPENSADOS"."IRESTOREC" IS 'Importe del recibo pendiente de compensar por el siguiente detalle del pago';
   COMMENT ON COLUMN "AXIS"."SIN_RECIBOS_COMPENSADOS"."CESTCOMP" IS 'Estado de la compensación: P-Pendiente de compensar por el siguiente detalle de pago C-Compensado';
   COMMENT ON TABLE "AXIS"."SIN_RECIBOS_COMPENSADOS"  IS 'Registro de recibos y pagos compensados';
  GRANT UPDATE ON "AXIS"."SIN_RECIBOS_COMPENSADOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_RECIBOS_COMPENSADOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_RECIBOS_COMPENSADOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_RECIBOS_COMPENSADOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_RECIBOS_COMPENSADOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_RECIBOS_COMPENSADOS" TO "PROGRAMADORESCSI";
