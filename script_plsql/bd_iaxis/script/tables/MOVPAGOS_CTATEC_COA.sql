--------------------------------------------------------
--  DDL for Table MOVPAGOS_CTATEC_COA
--------------------------------------------------------

  CREATE TABLE "AXIS"."MOVPAGOS_CTATEC_COA" 
   (	"SMOVPAGCOA" NUMBER(10,0), 
	"SPAGCOA" NUMBER(10,0), 
	"CEMPRES" NUMBER(2,0), 
	"CCOMPANI" NUMBER(3,0), 
	"SPRODUC" NUMBER(6,0), 
	"IIMPORTE" NUMBER(15,2), 
	"IIMPORTE_MONCON" NUMBER(15,2), 
	"CESTANT" NUMBER, 
	"CESTADO" NUMBER, 
	"FALTA" DATE, 
	"FLIQUIDA" DATE, 
	"FCONTAB" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MOVPAGOS_CTATEC_COA"."SMOVPAGCOA" IS 'Secuencia del movimiento del pago Coaseguro.';
   COMMENT ON COLUMN "AXIS"."MOVPAGOS_CTATEC_COA"."SPAGCOA" IS 'Secuencia del pago Coaseguro.';
   COMMENT ON COLUMN "AXIS"."MOVPAGOS_CTATEC_COA"."CEMPRES" IS 'Empresa';
   COMMENT ON COLUMN "AXIS"."MOVPAGOS_CTATEC_COA"."CCOMPANI" IS 'C�digo compa��a coaseguradora';
   COMMENT ON COLUMN "AXIS"."MOVPAGOS_CTATEC_COA"."SPRODUC" IS 'Identificador de proceso';
   COMMENT ON COLUMN "AXIS"."MOVPAGOS_CTATEC_COA"."IIMPORTE" IS 'Importe del pago';
   COMMENT ON COLUMN "AXIS"."MOVPAGOS_CTATEC_COA"."IIMPORTE_MONCON" IS 'Importe del pago moneda contabilidad';
   COMMENT ON COLUMN "AXIS"."MOVPAGOS_CTATEC_COA"."CESTANT" IS 'Estado anterior del pago. 0:Pendiente, 1:Pagado. VF. 249';
   COMMENT ON COLUMN "AXIS"."MOVPAGOS_CTATEC_COA"."CESTADO" IS 'Estado del pago. 0:Pendiente, 1:Pagado. VF. 249';
   COMMENT ON COLUMN "AXIS"."MOVPAGOS_CTATEC_COA"."FALTA" IS 'Fecha de alta del registro en la tabla';
   COMMENT ON COLUMN "AXIS"."MOVPAGOS_CTATEC_COA"."FLIQUIDA" IS 'Fecha en la que se liquido el pago  ';
   COMMENT ON COLUMN "AXIS"."MOVPAGOS_CTATEC_COA"."FCONTAB" IS 'Fecha contable';
   COMMENT ON TABLE "AXIS"."MOVPAGOS_CTATEC_COA"  IS 'Tabla historica de registros de movimientos de pago';
  GRANT UPDATE ON "AXIS"."MOVPAGOS_CTATEC_COA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MOVPAGOS_CTATEC_COA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MOVPAGOS_CTATEC_COA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MOVPAGOS_CTATEC_COA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MOVPAGOS_CTATEC_COA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MOVPAGOS_CTATEC_COA" TO "PROGRAMADORESCSI";
