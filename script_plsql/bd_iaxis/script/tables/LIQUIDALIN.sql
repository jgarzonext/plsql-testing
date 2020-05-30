--------------------------------------------------------
--  DDL for Table LIQUIDALIN
--------------------------------------------------------

  CREATE TABLE "AXIS"."LIQUIDALIN" 
   (	"CEMPRES" NUMBER(2,0), 
	"NLIQMEN" NUMBER(10,0), 
	"CAGENTE" NUMBER, 
	"NLIQLIN" NUMBER(8,0), 
	"NRECIBO" NUMBER, 
	"SMOVREC" NUMBER, 
	"ITOTIMP" NUMBER, 
	"ITOTALR" NUMBER, 
	"IPRINET" NUMBER, 
	"ICOMISI" NUMBER, 
	"IRETENCCOM" NUMBER, 
	"ISOBRECOMISION" NUMBER, 
	"IRETENCSOBRECOM" NUMBER, 
	"ICONVOLEDUCTO" NUMBER, 
	"IRETENCOLEODUCTO" NUMBER, 
	"CTIPOLIQ" NUMBER(3,0), 
	"ITOTIMP_MONCIA" NUMBER, 
	"ITOTALR_MONCIA" NUMBER, 
	"IPRINET_MONCIA" NUMBER, 
	"ICOMISI_MONCIA" NUMBER, 
	"IRETENCCOM_MONCIA" NUMBER, 
	"ISOBRECOM_MONCIA" NUMBER, 
	"IRETENCSCOM_MONCIA" NUMBER, 
	"ICONVOLEOD_MONCIA" NUMBER, 
	"IRETOLEOD_MONCIA" NUMBER, 
	"FCAMBIO" DATE, 
	"CAGEREC" NUMBER, 
	"NORDEN" NUMBER, 
	"IDIFERENCIA" NUMBER, 
	"COM_INC" NUMBER(1,0), 
	"IDIFERPYG" NUMBER, 
	"IMPPEND" NUMBER(20,0), 
	"VABONO" NUMBER(20,0), 
	"FABONO" DATE, 
	"DOCRECAU" NUMBER(20,0), 
	"CORTEPROD" NUMBER(20,0), 
	"VPAGOUT" NUMBER(20,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."CEMPRES" IS 'Código de empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."NLIQMEN" IS 'Número de  liquidación';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."CAGENTE" IS 'Código de agente';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."NLIQLIN" IS 'Número de línea';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."NRECIBO" IS 'Número de recibo.';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."SMOVREC" IS 'Secuencial del movimiento del recibo';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."ITOTIMP" IS 'Total Impuestos y Arbitrios';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."ITOTALR" IS 'Total del recibo';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."IPRINET" IS 'Prima Neta';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."ICOMISI" IS 'Importe de comisión';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."IRETENCCOM" IS 'Importe retención (Sumatorio impuestos a aplicar)';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."ISOBRECOMISION" IS 'Importe sobrecomisión';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."IRETENCSOBRECOM" IS 'Importe retención (Sumatorio impuestos a aplicar sobre la sobrecomisión)';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."ICONVOLEDUCTO" IS 'Importe convenio oleoducto';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."IRETENCOLEODUCTO" IS 'Importe retención (Sumatorio impuestos a aplicar sobre conv oleoducto)';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."CTIPOLIQ" IS 'Tipo de liquidación o por el líquido o por el total';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."ITOTIMP_MONCIA" IS 'Total Impuestos y Arbitrios en la moneda de la empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."ITOTALR_MONCIA" IS 'Total del recibo en la moneda de la empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."IPRINET_MONCIA" IS 'Prima Neta en la moneda de la empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."ICOMISI_MONCIA" IS 'Importe de comisión en la moneda de la empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."IRETENCCOM_MONCIA" IS 'Importe retención (Sumatorio impuestos a aplicar) en la moneda de la empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."ISOBRECOM_MONCIA" IS 'Importe sobrecomisión en la moneda de la empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."IRETENCSCOM_MONCIA" IS 'Importe retención (Sumatorio impuestos a aplicar sobre la sobrecomisión) en la moneda de la empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."ICONVOLEOD_MONCIA" IS 'Importe convenio oleoducto en la moneda de la empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."IRETOLEOD_MONCIA" IS 'Importe retención (Sumatorio impuestos a aplicar sobre conv oleoducto) en la moneda de la empresa';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."FCAMBIO" IS 'Fecha empleada para el cálculo de los contravalores';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."CAGEREC" IS 'Agentes del recibo, en caso de que le parámetro LIQUIDA_CTIPAGE este informado';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."NORDEN" IS 'Número de movimiento, para pagos parciales. DETMOVRECIBO.NORDEN';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."IDIFERENCIA" IS 'Diferencia de cobro del recibo';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."COM_INC" IS 'Comisión Incluida (1 incluida)';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."IDIFERPYG" IS 'Importe ';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."IMPPEND" IS 'Importe pendiente de cada recibo (pues puede tener abonos realizados)';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."VABONO" IS 'Indica si se est¿ realizando un abono';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."FABONO" IS 'Fecha del abono';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."DOCRECAU" IS '*aun por deinir*';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."CORTEPROD" IS 'Indica si el corte de cuentas es de producci¿n';
   COMMENT ON COLUMN "AXIS"."LIQUIDALIN"."VPAGOUT" IS 'Valor pago Outsourcing';
   COMMENT ON TABLE "AXIS"."LIQUIDALIN"  IS 'Tabla para registrar las lineas de la liquidación';
  GRANT UPDATE ON "AXIS"."LIQUIDALIN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LIQUIDALIN" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."LIQUIDALIN" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."LIQUIDALIN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LIQUIDALIN" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."LIQUIDALIN" TO "PROGRAMADORESCSI";
