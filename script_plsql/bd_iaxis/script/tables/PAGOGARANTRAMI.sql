--------------------------------------------------------
--  DDL for Table PAGOGARANTRAMI
--------------------------------------------------------

  CREATE TABLE "AXIS"."PAGOGARANTRAMI" 
   (	"CGARANT" NUMBER(4,0), 
	"SIDEPAG" NUMBER(8,0), 
	"ISINRET" NUMBER, 
	"FPERINI" DATE, 
	"FPERFIN" DATE, 
	"IIMPIVA" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PAGOGARANTRAMI"."CGARANT" IS 'Id. de la garantia';
   COMMENT ON COLUMN "AXIS"."PAGOGARANTRAMI"."SIDEPAG" IS 'Id. del pago';
   COMMENT ON COLUMN "AXIS"."PAGOGARANTRAMI"."ISINRET" IS 'Importe sin aplicar la retención (Menor que la valoración) con el iva incluido';
   COMMENT ON COLUMN "AXIS"."PAGOGARANTRAMI"."FPERINI" IS 'Fecha inicio periodo de baja';
   COMMENT ON COLUMN "AXIS"."PAGOGARANTRAMI"."FPERFIN" IS 'Fecha fin periodo de baja';
   COMMENT ON COLUMN "AXIS"."PAGOGARANTRAMI"."IIMPIVA" IS 'Importe del IVA';
   COMMENT ON TABLE "AXIS"."PAGOGARANTRAMI"  IS 'Pagos por garantia/tramitacion/siniestro';
  GRANT UPDATE ON "AXIS"."PAGOGARANTRAMI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PAGOGARANTRAMI" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PAGOGARANTRAMI" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PAGOGARANTRAMI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PAGOGARANTRAMI" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PAGOGARANTRAMI" TO "PROGRAMADORESCSI";
