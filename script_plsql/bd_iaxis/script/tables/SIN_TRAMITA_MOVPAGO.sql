--------------------------------------------------------
--  DDL for Table SIN_TRAMITA_MOVPAGO
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_TRAMITA_MOVPAGO" 
   (	"SIDEPAG" NUMBER(8,0), 
	"NMOVPAG" NUMBER(4,0), 
	"CESTPAG" NUMBER(1,0), 
	"FEFEPAG" DATE, 
	"CESTVAL" NUMBER(1,0), 
	"FCONTAB" DATE, 
	"SPROCES" NUMBER, 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CESTPAGANT" NUMBER(1,0), 
	"CSUBPAG" NUMBER(1,0), 
	"CSUBPAGANT" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVPAGO"."SIDEPAG" IS 'Secuencia Identificador Pago';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVPAGO"."NMOVPAG" IS 'N�mero Movimiento Pago';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVPAGO"."CESTPAG" IS 'C�digo Estado Pago. VALORES=3';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVPAGO"."FEFEPAG" IS 'Fecha Efecto Pago';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVPAGO"."CESTVAL" IS 'C�digo Estado Validaci�n Pago. VALORES=324';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVPAGO"."FCONTAB" IS 'Fecha Contabilidad';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVPAGO"."SPROCES" IS 'Secuencia Proceso';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVPAGO"."CUSUALT" IS 'C�digo Usuario Alta';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVPAGO"."FALTA" IS 'Fecha Alta';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVPAGO"."CESTPAGANT" IS 'C�digo Estado Pago anterior';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVPAGO"."CSUBPAG" IS 'C�digo Subestado Pago. VALORES=1051';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_MOVPAGO"."CSUBPAGANT" IS 'C�digo Subestado Pago anterior';
   COMMENT ON TABLE "AXIS"."SIN_TRAMITA_MOVPAGO"  IS 'Movimientos Pagos Siniestro';
  GRANT UPDATE ON "AXIS"."SIN_TRAMITA_MOVPAGO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_TRAMITA_MOVPAGO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_TRAMITA_MOVPAGO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_TRAMITA_MOVPAGO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_TRAMITA_MOVPAGO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_TRAMITA_MOVPAGO" TO "PROGRAMADORESCSI";
