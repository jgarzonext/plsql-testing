--------------------------------------------------------
--  DDL for Table SIN_TRAMITA_PRERESERVA_FND
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_TRAMITA_PRERESERVA_FND" 
   (	"NSINIES" VARCHAR2(14 BYTE), 
	"NTRAMIT" NUMBER(4,0), 
	"CGARANT" NUMBER(4,0), 
	"CCESTA" NUMBER(3,0), 
	"IRESERVA" NUMBER, 
	"NUNIDAD" NUMBER, 
	"IUNIDAD" NUMBER, 
	"IRESERVA_MONCIA" NUMBER, 
	"IUNIDAD_MONCIA" NUMBER, 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"IUNIDADSHW" NUMBER, 
	"IUNIDADSHW_MONCIA" NUMBER, 
	"NUNIDADSHW" NUMBER, 
	"IRESERVASHW" NUMBER, 
	"IRESERVASHW_MONCIA" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PRERESERVA_FND"."NSINIES" IS 'Identificador del siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PRERESERVA_FND"."NTRAMIT" IS 'N�mero de la tramitaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PRERESERVA_FND"."CGARANT" IS 'Identificador de la garantia implicada';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PRERESERVA_FND"."CCESTA" IS 'Identificador del fondo';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PRERESERVA_FND"."IRESERVA" IS 'Importe calculado para la reserva en esa fecha i fondo';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PRERESERVA_FND"."NUNIDAD" IS 'N�mero de unidades empleadas para el rescate del fondo';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PRERESERVA_FND"."IUNIDAD" IS 'Importe por unidad';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PRERESERVA_FND"."IRESERVA_MONCIA" IS 'Valor en la contramoneda (moneda base)';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PRERESERVA_FND"."IUNIDAD_MONCIA" IS 'Valor de una unidad en contramoneda(moneda base)';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PRERESERVA_FND"."CUSUALT" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PRERESERVA_FND"."FALTA" IS 'Fecha de modificaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PRERESERVA_FND"."CUSUMOD" IS 'Usuario de modificaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PRERESERVA_FND"."IUNIDADSHW" IS 'Importe por unidad de Shadow Account';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PRERESERVA_FND"."IUNIDADSHW_MONCIA" IS 'Valor de una unidad de Shadow Account en contramoneda (moneda base)';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PRERESERVA_FND"."NUNIDADSHW" IS 'Numero de unidades de Shadow Account';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PRERESERVA_FND"."IRESERVASHW" IS 'Importe de la reserva de Shadow Account';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_PRERESERVA_FND"."IRESERVASHW_MONCIA" IS 'Importe de la reserva de Shadow Account en contramoneda (moneda base)';
   COMMENT ON TABLE "AXIS"."SIN_TRAMITA_PRERESERVA_FND"  IS 'Tramitaci�n de rereservas de fondos en  siniestros';
  GRANT UPDATE ON "AXIS"."SIN_TRAMITA_PRERESERVA_FND" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_TRAMITA_PRERESERVA_FND" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_TRAMITA_PRERESERVA_FND" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_TRAMITA_PRERESERVA_FND" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_TRAMITA_PRERESERVA_FND" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_TRAMITA_PRERESERVA_FND" TO "PROGRAMADORESCSI";