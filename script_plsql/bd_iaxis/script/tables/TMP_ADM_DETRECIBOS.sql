--------------------------------------------------------
--  DDL for Table TMP_ADM_DETRECIBOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."TMP_ADM_DETRECIBOS" 
   (	"NRECIBO" NUMBER, 
	"CCONCEP" NUMBER(2,0), 
	"CGARANT" NUMBER(4,0), 
	"NRIESGO" NUMBER(6,0), 
	"ICONCEP" NUMBER, 
	"CAGEVEN" NUMBER(6,0), 
	"NMOVIMA" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."TMP_ADM_DETRECIBOS"."NRECIBO" IS 'N�mero Recibo';
   COMMENT ON COLUMN "AXIS"."TMP_ADM_DETRECIBOS"."CCONCEP" IS 'C�digo Concepto';
   COMMENT ON COLUMN "AXIS"."TMP_ADM_DETRECIBOS"."CGARANT" IS 'C�digo Garant�a';
   COMMENT ON COLUMN "AXIS"."TMP_ADM_DETRECIBOS"."NRIESGO" IS 'N�mero Riesgo';
   COMMENT ON COLUMN "AXIS"."TMP_ADM_DETRECIBOS"."ICONCEP" IS 'Importe Concepto';
   COMMENT ON COLUMN "AXIS"."TMP_ADM_DETRECIBOS"."CAGEVEN" IS 'C�digo Agente Venta';
   COMMENT ON COLUMN "AXIS"."TMP_ADM_DETRECIBOS"."NMOVIMA" IS 'N�mero Movimiento Alta';
   COMMENT ON TABLE "AXIS"."TMP_ADM_DETRECIBOS"  IS 'Detalle Recibos';
  GRANT UPDATE ON "AXIS"."TMP_ADM_DETRECIBOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_ADM_DETRECIBOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TMP_ADM_DETRECIBOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TMP_ADM_DETRECIBOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_ADM_DETRECIBOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TMP_ADM_DETRECIBOS" TO "PROGRAMADORESCSI";
