--------------------------------------------------------
--  DDL for Table PPPC_LCOL
--------------------------------------------------------

  CREATE TABLE "AXIS"."PPPC_LCOL" 
   (	"CEMPRES" NUMBER(2,0), 
	"FCALCUL" DATE, 
	"SPROCES" NUMBER(6,0), 
	"CRAMDGS" NUMBER(4,0), 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"SSEGURO" NUMBER(6,0), 
	"NRECIBO" NUMBER(9,0), 
	"NMOVIMI" NUMBER(4,0), 
	"FINIEFE" DATE, 
	"CGARANT" NUMBER(4,0), 
	"NRIESGO" NUMBER(6,0), 
	"IPPPC" NUMBER(17,2), 
	"IPPPC_MONCON" NUMBER(17,2), 
	"IDERREG" NUMBER(17,2), 
	"IDERREG_MONCON" NUMBER(17,2), 
	"CMONEDA" NUMBER, 
	"CERROR" NUMBER(2,0), 
	"TEDAD" VARCHAR2(200 BYTE), 
	"FCAMBIO" DATE, 
	"IPPPC_COA" NUMBER(17,2), 
	"IPPPC_MONCON_COA" NUMBER(17,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PPPC_LCOL"."CEMPRES" IS 'Identificador de la empresa';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL"."FCALCUL" IS 'Fecha de calculo';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL"."SPROCES" IS 'proceso de calculo-> procesoslin';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL"."CRAMDGS" IS 'Ramo de la DGS';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL"."CRAMO" IS 'Ramo del producto';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL"."CMODALI" IS 'Codigo de modalidad .-> productos.cmodali';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL"."CTIPSEG" IS 'Tipo de seguro -> productos.ctipseg';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL"."CCOLECT" IS 'Tipo de colectivo -> productos-ccolect';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL"."SSEGURO" IS 'Identifcador del seguro -> seguros.sseguro';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL"."NRECIBO" IS 'Indentificador del recibo recibos->nrecibo';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL"."NMOVIMI" IS 'Movimiento del seguro en el que se ha generado el recibo';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL"."FINIEFE" IS 'Fecha de inicio del efecto del recibo';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL"."CGARANT" IS 'Garantia tratada en ese registro. detrecibo.cgarant';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL"."NRIESGO" IS 'Riesgo del recibo(id), detrecibos.nriesgo';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL"."IPPPC" IS 'Provisión cartera (local)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL"."IPPPC_MONCON" IS 'Provisión cartera (local) en contramoneda';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL"."IDERREG" IS 'Derechos de registro de la poliza tratada en ese recibo.';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL"."IDERREG_MONCON" IS 'Derechos de registro de la poliza tratada en ese recibo (en contramoneda)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL"."CMONEDA" IS 'Id. de la moneda , numerico. Monedas.cmoneda';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL"."CERROR" IS 'Número de error';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL"."FCAMBIO" IS 'Fecha utilizada para el cálculo de los contravalores';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL"."IPPPC_COA" IS 'Provisión cartera coaseguro (local)';
   COMMENT ON COLUMN "AXIS"."PPPC_LCOL"."IPPPC_MONCON_COA" IS 'Provisión cartera coaseguro (local) en contramoneda';
   COMMENT ON TABLE "AXIS"."PPPC_LCOL"  IS 'tabla para el calculo de la PPPC de liberty, modo real';
  GRANT UPDATE ON "AXIS"."PPPC_LCOL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PPPC_LCOL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PPPC_LCOL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PPPC_LCOL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PPPC_LCOL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PPPC_LCOL" TO "PROGRAMADORESCSI";
