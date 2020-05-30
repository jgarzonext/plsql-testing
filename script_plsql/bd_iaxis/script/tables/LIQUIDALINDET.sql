--------------------------------------------------------
--  DDL for Table LIQUIDALINDET
--------------------------------------------------------

  CREATE TABLE "AXIS"."LIQUIDALINDET" 
   (	"CEMPRES" NUMBER(2,0), 
	"NLIQMEN" NUMBER(10,0), 
	"CAGENTE" NUMBER, 
	"NLIQLIN" NUMBER(8,0), 
	"NRECIBO" NUMBER(9,0), 
	"C11AF" NUMBER, 
	"C11EX" NUMBER, 
	"C17AF" NUMBER, 
	"C17EX" NUMBER, 
	"C44AF" NUMBER, 
	"C44EX" NUMBER, 
	"C45AF" NUMBER, 
	"C45EX" NUMBER, 
	"C46AF" NUMBER, 
	"C46EX" NUMBER, 
	"C47AF" NUMBER, 
	"C47EX" NUMBER, 
	"C48AF" NUMBER, 
	"C48EX" NUMBER, 
	"C49AF" NUMBER, 
	"C49EX" NUMBER, 
	"C11AF_MONCIA" NUMBER, 
	"C11EX_MONCIA" NUMBER, 
	"C17AF_MONCIA" NUMBER, 
	"C17EX_MONCIA" NUMBER, 
	"C44AF_MONCIA" NUMBER, 
	"C44EX_MONCIA" NUMBER, 
	"C45AF_MONCIA" NUMBER, 
	"C45EX_MONCIA" NUMBER, 
	"C46AF_MONCIA" NUMBER, 
	"C46EX_MONCIA" NUMBER, 
	"C47AF_MONCIA" NUMBER, 
	"C47EX_MONCIA" NUMBER, 
	"C48AF_MONCIA" NUMBER, 
	"C48EX_MONCIA" NUMBER, 
	"C49AF_MONCIA" NUMBER, 
	"C49EX_MONCIA" NUMBER, 
	"NORDEN" NUMBER, 
	"SMOVREC" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."CEMPRES" IS 'Código de empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."NLIQMEN" IS 'Número de  liquidación';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."CAGENTE" IS 'Código de agente';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."NLIQLIN" IS 'Número de línea';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."NRECIBO" IS 'Número de recibo.';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C11AF" IS 'Importe concepto 11 Comisión bruta afecta';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C11EX" IS 'Importe concepto 11 Comisión bruta exenta';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C17AF" IS 'Importe concepto 17 Comisión bruta indirecta afecta';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C17EX" IS 'Importe concepto 17 Comisión bruta indirecta exenta';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C44AF" IS 'Importe concepto 44 Comisión bruta Recaudación afecta';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C44EX" IS 'Importe concepto 44 Comisión bruta Recaudación exenta';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C45AF" IS 'Importe concepto 45 Comisión bruta Uso de canal afecta';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C45EX" IS 'Importe concepto 45 Comisión bruta Uso de canal exenta';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C46AF" IS 'Importe concepto 46 Comisión bruta acceso preferente afecta';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C46EX" IS 'Importe concepto 46 Comisión bruta acceso preferente exenta';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C47AF" IS 'Importe concepto 47 Comisión bruta Indirecta Recaudación afecta';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C47EX" IS 'Importe concepto 47 Comisión bruta Indirecta Recaudación exenta';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C48AF" IS 'Importe concepto 48 Comisión bruta Indirecta Uso de canal afecta';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C48EX" IS 'Importe concepto 48 Comisión bruta Indirecta Uso de canal exenta';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C49AF" IS 'Importe concepto 49 Comisión bruta Indirecta acceso preferente afecta';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C49EX" IS 'Importe concepto 49 Comisión bruta Indirecta acceso preferente exenta';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C11AF_MONCIA" IS 'Importe concepto 11 Comisión bruta afecta en moneda empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C11EX_MONCIA" IS 'Importe concepto 11 Comisión bruta exenta en moneda empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C17AF_MONCIA" IS 'Importe concepto 17 Comisión bruta indirecta afecta en moneda empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C17EX_MONCIA" IS 'Importe concepto 17 Comisión bruta indirecta exenta en moneda empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C44AF_MONCIA" IS 'Importe concepto 44 Comisión bruta Recaudación afecta en moneda empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C44EX_MONCIA" IS 'Importe concepto 44 Comisión bruta Recaudación exenta en moneda empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C45AF_MONCIA" IS 'Importe concepto 45 Comisión bruta Uso de canal afecta en moneda empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C45EX_MONCIA" IS 'Importe concepto 45 Comisión bruta Uso de canal exenta en moneda empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C46AF_MONCIA" IS 'Importe concepto 46 Comisión bruta acceso preferente afecta en moneda empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C46EX_MONCIA" IS 'Importe concepto 46 Comisión bruta acceso preferente exenta en moneda empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C47AF_MONCIA" IS 'Importe concepto 47 Comisión bruta Indirecta Recaudación afecta en moneda empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C47EX_MONCIA" IS 'Importe concepto 47 Comisión bruta Indirecta Recaudación exenta en moneda empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C48AF_MONCIA" IS 'Importe concepto 48 Comisión bruta Indirecta Uso de canal afecta en moneda empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C48EX_MONCIA" IS 'Importe concepto 48 Comisión bruta Indirecta Uso de canal exenta en moneda empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C49AF_MONCIA" IS 'Importe concepto 49 Comisión bruta Indirecta acceso preferente afecta en moneda empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."C49EX_MONCIA" IS 'Importe concepto 49 Comisión bruta Indirecta acceso preferente exenta en moneda empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."NORDEN" IS 'Número de movimiento, para pagos parciales. DETMOVRECIBO.NORDEN';
   COMMENT ON COLUMN "AXIS"."LIQUIDALINDET"."SMOVREC" IS 'Secuencial del movimiento';
   COMMENT ON TABLE "AXIS"."LIQUIDALINDET"  IS 'Detalle de conceptos de las lineas de la liquidación';
  GRANT UPDATE ON "AXIS"."LIQUIDALINDET" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LIQUIDALINDET" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."LIQUIDALINDET" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."LIQUIDALINDET" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LIQUIDALINDET" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."LIQUIDALINDET" TO "PROGRAMADORESCSI";
