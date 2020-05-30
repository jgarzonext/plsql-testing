--------------------------------------------------------
--  DDL for Table CAJAMOV
--------------------------------------------------------

  CREATE TABLE "AXIS"."CAJAMOV" 
   (	"SEQCAJA" NUMBER(10,0), 
	"CEMPRES" NUMBER(8,0), 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"SPERSON" NUMBER(10,0), 
	"FFECMOV" DATE, 
	"CTIPMOV" NUMBER(4,0), 
	"IMOVIMI" NUMBER, 
	"IAUTLIQ" NUMBER, 
	"IPAGSIN" NUMBER, 
	"CMONEOP" NUMBER(4,0), 
	"IIMPINS" NUMBER, 
	"FCAMBIO" DATE, 
	"FCIERRE" DATE, 
	"FCONTAB" DATE, 
	"IAUTINS" NUMBER, 
	"IPAGINS" NUMBER, 
	"IAUTLIQP" NUMBER, 
	"IAUTINSP" NUMBER, 
	"IDIFCAMBIO" NUMBER, 
	"CUSUAPUNTE" VARCHAR2(20 BYTE), 
	"TMOTAPU" VARCHAR2(200 BYTE), 
	"CMANUAL" NUMBER(1,0) DEFAULT 1
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CAJAMOV"."SEQCAJA" IS 'Clave unica movimiento. SEQCAJA';
   COMMENT ON COLUMN "AXIS"."CAJAMOV"."CEMPRES" IS 'Codigo de la empresa';
   COMMENT ON COLUMN "AXIS"."CAJAMOV"."CUSUARI" IS 'Clave usuario';
   COMMENT ON COLUMN "AXIS"."CAJAMOV"."SPERSON" IS 'Clave personas';
   COMMENT ON COLUMN "AXIS"."CAJAMOV"."FFECMOV" IS 'Fecha movimiento';
   COMMENT ON COLUMN "AXIS"."CAJAMOV"."CTIPMOV" IS 'Tipo de movimiento. cvlor=482';
   COMMENT ON COLUMN "AXIS"."CAJAMOV"."IMOVIMI" IS 'Importe de la operación';
   COMMENT ON COLUMN "AXIS"."CAJAMOV"."IAUTLIQ" IS 'Imp. autoliquidación comisiones. Solo Intermediarios';
   COMMENT ON COLUMN "AXIS"."CAJAMOV"."IPAGSIN" IS 'Imp. pago siniestros. Solo Partners';
   COMMENT ON COLUMN "AXIS"."CAJAMOV"."CMONEOP" IS 'Moneda de la operación';
   COMMENT ON COLUMN "AXIS"."CAJAMOV"."IIMPINS" IS 'Importe en moneda instalación';
   COMMENT ON COLUMN "AXIS"."CAJAMOV"."FCAMBIO" IS 'Fecha de cambio';
   COMMENT ON COLUMN "AXIS"."CAJAMOV"."FCIERRE" IS 'Fecha de cierre del movto';
   COMMENT ON COLUMN "AXIS"."CAJAMOV"."FCONTAB" IS 'Fecha de contabilidad';
   COMMENT ON COLUMN "AXIS"."CAJAMOV"."IAUTINS" IS 'Imp. autoliquidación comisiones. Solo Intermediarios. Importe Moneda instalación';
   COMMENT ON COLUMN "AXIS"."CAJAMOV"."IPAGINS" IS 'Imp. pago siniestros. Solo Partners. Importe en moneda instalación';
   COMMENT ON COLUMN "AXIS"."CAJAMOV"."IAUTLIQP" IS 'Imp. autoliquidación comisiones. Solo Partners';
   COMMENT ON COLUMN "AXIS"."CAJAMOV"."IAUTINSP" IS 'Imp. autoliquidación comisiones. Solo Partners. Importe Moneda instalación';
   COMMENT ON COLUMN "AXIS"."CAJAMOV"."IDIFCAMBIO" IS 'Importe compensatorio Dif. Cambio. Moneda Instalación';
   COMMENT ON COLUMN "AXIS"."CAJAMOV"."CUSUAPUNTE" IS 'Código del usuario que realiza el apunte manual';
   COMMENT ON COLUMN "AXIS"."CAJAMOV"."TMOTAPU" IS 'Descripción motivo del apunte manual';
   COMMENT ON COLUMN "AXIS"."CAJAMOV"."CMANUAL" IS 'Tipo de apunte, 0-Automático, 1-Manual';
   COMMENT ON TABLE "AXIS"."CAJAMOV"  IS 'Movimientos de caja';
  GRANT UPDATE ON "AXIS"."CAJAMOV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CAJAMOV" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CAJAMOV" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CAJAMOV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CAJAMOV" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CAJAMOV" TO "PROGRAMADORESCSI";
