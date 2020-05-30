--------------------------------------------------------
--  DDL for Table PPPC_CONF
--------------------------------------------------------

  CREATE TABLE "AXIS"."PPPC_CONF" 
   (	"CEMPRES" NUMBER(2,0), 
	"FCALCUL" DATE, 
	"SPROCES" NUMBER, 
	"CRAMDGS" NUMBER(4,0), 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"SSEGURO" NUMBER, 
	"NRECIBO" NUMBER, 
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
	"IPPPC_MONCON_COA" NUMBER(17,2), 
	"IPROVMORA" NUMBER(17,2), 
	"CMETODO" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PPPC_CONF"."CEMPRES" IS 'Identificador de la empresa';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF"."FCALCUL" IS 'Fecha de calculo';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF"."SPROCES" IS 'proceso de calculo-> procesoslin';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF"."CRAMDGS" IS 'Ramo de la DGS';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF"."CRAMO" IS 'Ramo del producto';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF"."CMODALI" IS 'Codigo de modalidad .-> productos.cmodali';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF"."CTIPSEG" IS 'Tipo de seguro -> productos.ctipseg';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF"."CCOLECT" IS 'Tipo de colectivo -> productos-ccolect';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF"."SSEGURO" IS 'Identifcador del seguro -> seguros.sseguro';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF"."NRECIBO" IS 'Indentificador del recibo recibos->nrecibo';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF"."NMOVIMI" IS 'Movimiento del seguro en el que se ha generado el recibo';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF"."FINIEFE" IS 'Fecha de inicio del efecto del recibo';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF"."CGARANT" IS 'Garantia tratada en ese registro. detrecibo.cgarant';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF"."NRIESGO" IS 'Riesgo del recibo(id), detrecibos.nriesgo';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF"."IPPPC" IS 'Provisi¿n cartera (local)';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF"."IPPPC_MONCON" IS 'Provisi¿n cartera (local) en contramoneda';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF"."IDERREG" IS 'Derechos de registro de la poliza tratada en ese recibo.';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF"."IDERREG_MONCON" IS 'Derechos de registro de la poliza tratada en ese recibo (en contramoneda)';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF"."CMONEDA" IS 'Id. de la moneda , numerico. Monedas.cmoneda';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF"."CERROR" IS 'N¿mero de error';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF"."FCAMBIO" IS 'Fecha utilizada para el c¿lculo de los contravalores';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF"."IPPPC_COA" IS 'Provisi¿n cartera coaseguro (local)';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF"."IPPPC_MONCON_COA" IS 'Provisi¿n cartera coaseguro (local) en contramoneda';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF"."IPROVMORA" IS 'Importe Provisi¿n Intereses de Mora';
   COMMENT ON COLUMN "AXIS"."PPPC_CONF"."CMETODO" IS 'Tipo metodo provision prima: CVALOR 8001176  1 con negativos,  2 sin negativos';
   COMMENT ON TABLE "AXIS"."PPPC_CONF"  IS 'tabla para el calculo de la PPPC de CONFIANZA, modo real';
  GRANT UPDATE ON "AXIS"."PPPC_CONF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PPPC_CONF" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PPPC_CONF" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PPPC_CONF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PPPC_CONF" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PPPC_CONF" TO "PROGRAMADORESCSI";
