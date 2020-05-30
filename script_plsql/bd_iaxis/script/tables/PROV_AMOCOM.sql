--------------------------------------------------------
--  DDL for Table PROV_AMOCOM
--------------------------------------------------------

  CREATE TABLE "AXIS"."PROV_AMOCOM" 
   (	"CEMPRES" NUMBER, 
	"FCALCUL" DATE, 
	"SPROCES" NUMBER, 
	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER, 
	"NMOVIMI" NUMBER, 
	"CGARANT" NUMBER, 
	"ICAGE" NUMBER, 
	"ICADN" NUMBER, 
	"ICAGE_NC" NUMBER, 
	"ICADN_NC" NUMBER, 
	"ICAGE_MONCON" NUMBER, 
	"ICADN_MONCON" NUMBER, 
	"ICAGE_NC_MONCON" NUMBER, 
	"ICADN_NC_MONCON" NUMBER, 
	"FCAMBIO" DATE, 
	"CMONEDA" NUMBER, 
	"NRECIBO" NUMBER, 
	"FEFECTO" DATE, 
	"FFINCAL" DATE, 
	"FVENCIM" DATE, 
	"ICAGE_COA" NUMBER, 
	"ICADN_COA" NUMBER, 
	"ICAGE_NC_COA" NUMBER, 
	"ICADN_NC_COA" NUMBER, 
	"ICAGE_MONCON_COA" NUMBER, 
	"ICADN_MONCON_COA" NUMBER, 
	"ICAGE_NC_MONCON_COA" NUMBER, 
	"ICADN_NC_MONCON_COA" NUMBER, 
	"CAGENTE" NUMBER, 
	"CTIPREC" NUMBER(2,0), 
	"CTIPADN" NUMBER(3,0), 
	"ISOBRECOM_C" NUMBER, 
	"ISOBRECOM_C_MONCON" NUMBER, 
	"ISOBRECOM_COA" NUMBER, 
	"ISOBRECOM_COA_MONCON" NUMBER, 
	"ICAGE_WEB" NUMBER, 
	"ICAGE_WEB_NC" NUMBER, 
	"ICAGE_WEB_COA" NUMBER, 
	"ICAGE_WEB_NC_COA" NUMBER, 
	"ICAGE_WEB_MONCON" NUMBER, 
	"ICAGE_WEB_NC_MONCON" NUMBER, 
	"ICAGE_WEB_COA_MONCON" NUMBER, 
	"ICAGE_WEB_NC_COA_MONCON" NUMBER, 
	"ISOBRECOM_TOTAL" NUMBER, 
	"ISOBRECOM_TOTAL_MONCON" NUMBER, 
	"ISOBRECOM_TOTAL_COA" NUMBER, 
	"ISOBRECOM_TOTAL_COA_MONCON" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."CEMPRES" IS 'id de la empresa';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."FCALCUL" IS 'fecha de calculo';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."SPROCES" IS 'Proceso de lanzamiento';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."SSEGURO" IS 'seguro';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."NRIESGO" IS 'riesgo';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."NMOVIMI" IS 'movimiento';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."CGARANT" IS 'codigo de garantia';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ICAGE" IS 'Importe de comisi�n del intermediario';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ICADN" IS 'Importe de comisi�n del ADN';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ICAGE_NC" IS 'Importe de comisi�n del intermediario no consumido';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ICADN_NC" IS 'Importe de comisi�n del ADN no consumido';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ICAGE_MONCON" IS 'Importe de comisi�n del intermediario en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ICADN_MONCON" IS 'Importe de comisi�n del ADN en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ICAGE_NC_MONCON" IS 'Importe de comisi�n del intermediario no consumido en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ICADN_NC_MONCON" IS 'Importe de comisi�n del ADN no consumido en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."FCAMBIO" IS 'Fecha utilizada para el c�lculo de los contravalores';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."CMONEDA" IS 'Moneda de la p�liza';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."NRECIBO" IS 'Id. del recibo';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."FEFECTO" IS 'fecha inicio calculo.';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."FFINCAL" IS 'fecha fin del calculo en el periodo';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."FVENCIM" IS 'fecha vencimiento del recibo';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ICAGE_COA" IS 'Importe de comisi�n del intermediario';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ICADN_COA" IS 'Importe de comisi�n del ADN';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ICAGE_NC_COA" IS 'Importe de comisi�n del intermediario no consumido';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ICADN_NC_COA" IS 'Importe de comisi�n del ADN no consumido';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ICAGE_MONCON_COA" IS 'Importe de comisi�n del intermediario en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ICADN_MONCON_COA" IS 'Importe de comisi�n del ADN en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ICAGE_NC_MONCON_COA" IS 'Importe de comisi�n del intermediario no consumido en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ICADN_NC_MONCON_COA" IS 'Importe de comisi�n del ADN no consumido en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."CAGENTE" IS 'C�digo de agente';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."CTIPREC" IS 'Tipo de recibo (detvalores.cvalor = 8)';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."CTIPADN" IS 'Tipo de Administraci�n de Negocio (ADN). V.F.370';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ISOBRECOM_C" IS 'Sobrecomisi�n Consumida';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ISOBRECOM_C_MONCON" IS 'Sobrecomisi�n Consumida en Contramoneda';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ISOBRECOM_COA" IS 'Sobrecomisi�n Consumida Cedida';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ISOBRECOM_COA_MONCON" IS 'Sobrecomisi�n Consumida Cedida en Contramoneda';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ICAGE_WEB" IS 'Comision WEB';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ICAGE_WEB_NC" IS 'Comision consumida WEB';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ICAGE_WEB_COA" IS 'Comision WEB Cedida';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ICAGE_WEB_NC_COA" IS 'Comision consumida WEB Cedida';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ICAGE_WEB_MONCON" IS 'Comision WEB en Contramoneda';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ICAGE_WEB_NC_MONCON" IS 'Comision consumida WEB en Contramoneda';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ICAGE_WEB_COA_MONCON" IS 'Comision WEB Cedida en Contramoneda';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ICAGE_WEB_NC_COA_MONCON" IS 'Comision consumida WEB Cedida en Contramoneda';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ISOBRECOM_TOTAL" IS 'Sobrecomisi�n total';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ISOBRECOM_TOTAL_MONCON" IS 'Sobrecomisi�n total en contramoneda';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ISOBRECOM_TOTAL_COA" IS 'Sobrecomisi�n total cedida';
   COMMENT ON COLUMN "AXIS"."PROV_AMOCOM"."ISOBRECOM_TOTAL_COA_MONCON" IS 'Sobrecomisi�n total cedida en contramoneda';
   COMMENT ON TABLE "AXIS"."PROV_AMOCOM"  IS 'Tabla calculo provisiones : Amortizacion de comisiones de liberty, modo real';
  GRANT UPDATE ON "AXIS"."PROV_AMOCOM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PROV_AMOCOM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PROV_AMOCOM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PROV_AMOCOM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PROV_AMOCOM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PROV_AMOCOM" TO "PROGRAMADORESCSI";
