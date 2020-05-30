--------------------------------------------------------
--  DDL for Table UPR_PREVIO
--------------------------------------------------------

  CREATE TABLE "AXIS"."UPR_PREVIO" 
   (	"CEMPRES" NUMBER, 
	"FCALCUL" DATE, 
	"SPROCES" NUMBER, 
	"CRAMO" NUMBER, 
	"CMODALI" NUMBER, 
	"CTIPSEG" NUMBER, 
	"CCOLECT" NUMBER, 
	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER, 
	"NMOVIMI" NUMBER, 
	"CGARANT" NUMBER, 
	"IPRIANU" NUMBER, 
	"IGUPR" NUMBER, 
	"ICUPR" NUMBER, 
	"INUPR" NUMBER, 
	"ITURP" NUMBER, 
	"IARPDSUPR" NUMBER, 
	"IARPUPR" NUMBER, 
	"IAUPR" NUMBER, 
	"IASUPR" NUMBER, 
	"IAREUPR" NUMBER, 
	"IGWP" NUMBER, 
	"INEP" NUMBER, 
	"ITNWP" NUMBER, 
	"IQGWP" NUMBER, 
	"IOWP" NUMBER, 
	"ICWP" NUMBER, 
	"IQWP" NUMBER, 
	"IOCWP" NUMBER, 
	"PADQ" NUMBER, 
	"IADQUI" NUMBER, 
	"PCF" NUMBER(5,2), 
	"PARPUPR" NUMBER(5,2), 
	"PARPDSUPR" NUMBER(5,2), 
	"PTURP" NUMBER(5,2), 
	"IPROVCC" NUMBER, 
	"PCOMISI" NUMBER(5,2), 
	"PCADN" NUMBER(5,2), 
	"IDAC" NUMBER, 
	"IDACADN" NUMBER, 
	"ICADQDIFREA" NUMBER, 
	"IFACTRRES" NUMBER, 
	"IFACTRESP" NUMBER, 
	"IFACTRIES" NUMBER, 
	"CMONEDA" NUMBER, 
	"ITASA" NUMBER, 
	"FINI" DATE, 
	"FFIN" DATE, 
	"INUPR_MONCON" NUMBER, 
	"ICUPR_MONCON" NUMBER, 
	"IAUPR_MONCON" NUMBER, 
	"IGUPR_MONCON" NUMBER, 
	"ICWP_MONCON" NUMBER, 
	"FCAMBIO" DATE, 
	"IPRIANU_MONCON" NUMBER, 
	"INEP_MONCON" NUMBER, 
	"ICAGE" NUMBER, 
	"ICADN" NUMBER, 
	"ICAGE_NC" NUMBER, 
	"ICADN_NC" NUMBER, 
	"ICAGE_MONCON" NUMBER, 
	"ICADN_MONCON" NUMBER, 
	"ICAGE_NC_MONCON" NUMBER, 
	"ICADN_NC_MONCON" NUMBER, 
	"ICAGE_COA" NUMBER(13,2), 
	"ICADN_COA" NUMBER(13,2), 
	"ICAGE_NC_COA" NUMBER(13,2), 
	"ICADN_NC_COA" NUMBER(13,2), 
	"ICAGE_MONCON_COA" NUMBER(13,2), 
	"ICADN_MONCON_COA" NUMBER(13,2), 
	"ICAGE_NC_MONCON_COA" NUMBER(13,2), 
	"ICADN_NC_MONCON_COA" NUMBER(13,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."CEMPRES" IS 'id de la empresa';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."FCALCUL" IS 'fecha de calculo';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."SPROCES" IS 'Proceso de lanzamiento';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."CRAMO" IS 'ramo';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."CMODALI" IS 'modalidad';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."CTIPSEG" IS 'tipo de seguro';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."CCOLECT" IS 'colectivo';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."SSEGURO" IS 'seguro';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."NRIESGO" IS 'riesgo';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."NMOVIMI" IS 'movimiento';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."CGARANT" IS 'codigo de garantia';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."IPRIANU" IS 'Prima anual = prima emitida bruta';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."IGUPR" IS 'Importe de la Prima cedida proporciona';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."ICUPR" IS 'Importe de la Prima cedida proporciona';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."INUPR" IS 'Reserva de Riesgo en Curso para la Prima Neta de Reaseguros Proporcional';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."ITURP" IS 'Reserva de Desviación de Siniestralidad  para el Ramo de Terremoto';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."IARPDSUPR" IS 'Reserva de Desviación de Siniestralidad para el Ramo de ARP';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."IARPUPR" IS 'Reserva para Enfermedades Profesionales para el Ramo de ARP';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."IAUPR" IS 'Ajuste GAAP para la GUPR.';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."IASUPR" IS 'Ajuste GAAP para la GUPR de SOAT.';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."IAREUPR" IS 'Ajuste GAAP sobre la GUPR de los Ramos con Regímenes Especiales de Reserva.';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."IGWP" IS 'Prima Emitida Bruta.';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."INEP" IS 'Prima Devengada Neta de Reaseguro.';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."ITNWP" IS 'Prima Neta de Reaseguros Proporcional para la cobertura de Terremoto';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."IQGWP" IS 'Prima Emitida Bruta en el Último trimestre a la fecha de cálculo.';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."IOWP" IS 'Puede tomar el valor entre GWP y QGWP dependiendo del régimen de reserven en el que se encuentre el mercado colombiano';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."ICWP" IS 'Prima Cedida en Reaseguros Proporcional';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."IQWP" IS 'Prima Cedida en Reaseguros Proporcional en el último trimestre a la fecha de cálculo.';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."IOCWP" IS 'Puede tomar el valor entre CWP y CGWP dependiendo del régimen de reserven en el que se encuentre el mercado colombiano';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."PADQ" IS 'porcentaje del gasto de adquisición.';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."IADQUI" IS 'Gastos de Adquisición causados al momento de emisión de la póliza';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."PCF" IS 'Parámetro para el Porcentaje de Contribución al FOSYGA.';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."PARPUPR" IS 'Parámetro para el Porcentaje de la ARPURP.';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."PARPDSUPR" IS 'Parámetro para el Porcentaje de la ARPDSUPR.';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."PTURP" IS 'Parámetro para el Porcentaje de la TURP.';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."IPROVCC" IS 'Provisión para la Cámara de Compensación, esta provisión debe ser distribuida por sucursal y ADN.';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."PCOMISI" IS 'Porcentaje de Comisión Básica de la Póliza.';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."PCADN" IS 'Porcentaje de Comisión pagado a la ADN.';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."IDAC" IS 'Costo de Adquisición Diferido.';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."IDACADN" IS 'Costo de Adquisición Diferido pagada a la ADN.';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."ICADQDIFREA" IS 'Costo de Adquisición Diferido para la Comisión de Recibida en Reaseguro Proporcional';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."IFACTRRES" IS 'Factor de régimen de reservas, este debe ser un parámetro que tome valores entre 0 y 1';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."IFACTRESP" IS 'Factor de Régimen Especial, este factor tomará valores dependiendo del ramo y debe poder parametrizarse para que pueda aceptar cambios futuros';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."IFACTRIES" IS 'Factor de Riesgo por Transcurrir, el cual obedece a la siguiente fórmula:';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."CMONEDA" IS 'Moneda de la poliza tratada';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."ITASA" IS 'valor de la tasa de contravalor de multimoneda';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."FINI" IS 'Fecha de inicio del periodo del provisionamiento';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."FFIN" IS 'Fecha de inicio del periodo del provisionamiento';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."INUPR_MONCON" IS 'Reserva de Riesgo en Curso para la Prima Neta de Reaseguros Proporcional en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."ICUPR_MONCON" IS 'Importe de la Prima cedida proporciona en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."IAUPR_MONCON" IS 'Ajuste GAAP para la GUPR en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."IGUPR_MONCON" IS 'Importe de la Prima cedida proporcional en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."ICWP_MONCON" IS 'Prima Cedida en Reaseguros Proporcional en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."FCAMBIO" IS 'Fecha utilizada para el cálculo de los contravalores';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."IPRIANU_MONCON" IS 'Prima anual = prima emitida bruta en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."INEP_MONCON" IS 'Prima Devengada Neta de Reaseguro en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."ICAGE" IS 'Importe de comisión del intermediario';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."ICADN" IS 'Importe de comisión del ADN';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."ICAGE_NC" IS 'Importe de comisión del intermediario no consumido';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."ICADN_NC" IS 'Importe de comisión del ADN no consumido';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."ICAGE_MONCON" IS 'Importe de comisión del intermediario en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."ICADN_MONCON" IS 'Importe de comisión del ADN en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."ICAGE_NC_MONCON" IS 'Importe de comisión del intermediario no consumido en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."ICADN_NC_MONCON" IS 'Importe de comisión del ADN no consumido en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."ICAGE_COA" IS 'Importe de comisión del intermediario (coaseguro)';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."ICADN_COA" IS 'Importe de comisión del ADN (coaseguro)';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."ICAGE_NC_COA" IS 'Importe de comisión del intermediario no consumido (coaseguro)';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."ICADN_NC_COA" IS 'Importe de comisión del ADN no consumido (coaseguro)';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."ICAGE_MONCON_COA" IS 'Importe de comisión del intermediario en la moneda de la contabilidad (coaseguro)';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."ICADN_MONCON_COA" IS 'Importe de comisión del ADN en la moneda de la contabilidad (coaseguro)';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."ICAGE_NC_MONCON_COA" IS 'Importe de comisión del intermediario no consumido en la moneda de la contabilidad (coaseguro)';
   COMMENT ON COLUMN "AXIS"."UPR_PREVIO"."ICADN_NC_MONCON_COA" IS 'Importe de comisión del ADN no consumido en la moneda de la contabilidad (coaseguro)';
   COMMENT ON TABLE "AXIS"."UPR_PREVIO"  IS 'tabla para el calculo de la upr (ppnc) de liberty, modo previo';
  GRANT UPDATE ON "AXIS"."UPR_PREVIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."UPR_PREVIO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."UPR_PREVIO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."UPR_PREVIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."UPR_PREVIO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."UPR_PREVIO" TO "PROGRAMADORESCSI";
