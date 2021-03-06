--------------------------------------------------------
--  DDL for Table COMISADC_RESULT_PREV
--------------------------------------------------------

  CREATE TABLE "AXIS"."COMISADC_RESULT_PREV" 
   (	"SPROCES" NUMBER, 
	"FCIERRE" DATE, 
	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER, 
	"NRECIBO" NUMBER, 
	"IPRINET" NUMBER, 
	"ITOTALR" NUMBER, 
	"IPRINET_MONPOL" NUMBER, 
	"ITOTALR_MONPOL" NUMBER, 
	"CAGENTE" NUMBER, 
	"CAGEIND" NUMBER, 
	"CTIPREC" NUMBER, 
	"FCOBRO" DATE, 
	"CTIPCOM" NUMBER, 
	"CVIGENTE" NUMBER, 
	"CGARANT" NUMBER, 
	"SPROCESLIQ" NUMBER, 
	"SPROCESLIQ_IND" NUMBER, 
	"ICOMISI" NUMBER, 
	"ITOPUP" NUMBER, 
	"ITOPUPCOMI" NUMBER, 
	"CFORPAG" NUMBER, 
	"ISPCOMI" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."COMISADC_RESULT_PREV"."SPROCES" IS 'Identificador del proceso de cierre';
   COMMENT ON COLUMN "AXIS"."COMISADC_RESULT_PREV"."FCIERRE" IS 'Fecha de ejecución del cierre';
   COMMENT ON COLUMN "AXIS"."COMISADC_RESULT_PREV"."SSEGURO" IS 'Numero de recibo';
   COMMENT ON COLUMN "AXIS"."COMISADC_RESULT_PREV"."NMOVIMI" IS 'Numero de movimiento';
   COMMENT ON COLUMN "AXIS"."COMISADC_RESULT_PREV"."NRECIBO" IS 'Identificador del  numero del recibo';
   COMMENT ON COLUMN "AXIS"."COMISADC_RESULT_PREV"."IPRINET" IS 'total prima neta';
   COMMENT ON COLUMN "AXIS"."COMISADC_RESULT_PREV"."ITOTALR" IS 'Total importe del recibo';
   COMMENT ON COLUMN "AXIS"."COMISADC_RESULT_PREV"."IPRINET_MONPOL" IS 'Total prima neta en moneda instalación';
   COMMENT ON COLUMN "AXIS"."COMISADC_RESULT_PREV"."ITOTALR_MONPOL" IS 'Total prima bruta en moneda instalación';
   COMMENT ON COLUMN "AXIS"."COMISADC_RESULT_PREV"."CAGENTE" IS 'Código del agente al que se le paga';
   COMMENT ON COLUMN "AXIS"."COMISADC_RESULT_PREV"."CAGEIND" IS 'Agentes indirectos (agente del recibo)';
   COMMENT ON COLUMN "AXIS"."COMISADC_RESULT_PREV"."CTIPREC" IS 'Tipo de recibo';
   COMMENT ON COLUMN "AXIS"."COMISADC_RESULT_PREV"."FCOBRO" IS 'Fecha de cobro';
   COMMENT ON COLUMN "AXIS"."COMISADC_RESULT_PREV"."CTIPCOM" IS 'DETVALORES 167 que indica que tipo de comisión adicional estamos calculando';
   COMMENT ON COLUMN "AXIS"."COMISADC_RESULT_PREV"."CVIGENTE" IS '0 - VIGENTE; != 0 NO VIGENTE';
   COMMENT ON COLUMN "AXIS"."COMISADC_RESULT_PREV"."CGARANT" IS 'Garantia';
   COMMENT ON COLUMN "AXIS"."COMISADC_RESULT_PREV"."SPROCESLIQ" IS 'Proceso que realiza la liquidacion CAGENTE - CTACTES';
   COMMENT ON COLUMN "AXIS"."COMISADC_RESULT_PREV"."SPROCESLIQ_IND" IS 'Proceso que realiza la liquidacion CAGEIND - CTACTES en caso de PERSISTENCY';
   COMMENT ON COLUMN "AXIS"."COMISADC_RESULT_PREV"."ICOMISI" IS 'Comision de este registro';
   COMMENT ON COLUMN "AXIS"."COMISADC_RESULT_PREV"."ITOPUP" IS 'Monto de Aportaciones extraordinarias';
   COMMENT ON COLUMN "AXIS"."COMISADC_RESULT_PREV"."ITOPUPCOMI" IS 'Comision sobre monto de Aportaciones extraordinarias';
   COMMENT ON COLUMN "AXIS"."COMISADC_RESULT_PREV"."CFORPAG" IS 'Forma de pago cvalor = 17';
   COMMENT ON COLUMN "AXIS"."COMISADC_RESULT_PREV"."ISPCOMI" IS 'Comision Single Premium';
  GRANT SELECT ON "AXIS"."COMISADC_RESULT_PREV" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."COMISADC_RESULT_PREV" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."COMISADC_RESULT_PREV" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."COMISADC_RESULT_PREV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COMISADC_RESULT_PREV" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."COMISADC_RESULT_PREV" TO "PROGRAMADORESCSI";
