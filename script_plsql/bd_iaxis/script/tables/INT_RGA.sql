--------------------------------------------------------
--  DDL for Table INT_RGA
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_RGA" 
   (	"SINTERF" NUMBER, 
	"NLINEA" NUMBER(6,0), 
	"EMPRESA" NUMBER(2,0), 
	"PRODUCTO" VARCHAR2(6 BYTE), 
	"POLIZA_PARTICIPE" VARCHAR2(10 BYTE), 
	"NIF" VARCHAR2(14 BYTE), 
	"NOMBRE" VARCHAR2(100 BYTE), 
	"APELLIDOS" VARCHAR2(40 BYTE), 
	"DIRECCION" VARCHAR2(80 BYTE), 
	"CP" VARCHAR2(5 BYTE), 
	"POBLACION" VARCHAR2(40 BYTE), 
	"PROVINCIA" VARCHAR2(20 BYTE), 
	"FEC_NAC" VARCHAR2(10 BYTE), 
	"CAJA_GESTORA" VARCHAR2(4 BYTE), 
	"CAJA_COBRADORA" VARCHAR2(4 BYTE), 
	"OFICINA_GESTORA" VARCHAR2(4 BYTE), 
	"OFICINA_COBRADORA" VARCHAR2(4 BYTE), 
	"EMPLEADO" VARCHAR2(4 BYTE), 
	"IMPORTE_EMITIDOS_PROD" NUMBER(15,3), 
	"IMPORTE_ANULADOS_PROD" NUMBER(15,3), 
	"IMPORTE_EMITIDOS_CART" NUMBER(15,3), 
	"IMPORTE_ANULADOS_CART" NUMBER(15,3), 
	"IMPORTE_EMITIDOS_RECUR" NUMBER(15,3), 
	"IMPORTE_ANULADOS_RECUR" NUMBER(15,3), 
	"NUM_REC_PRODUCCION_EMITIDOS" NUMBER(4,0), 
	"NUM_REC_PRODUCCION_ANULADOS" NUMBER(4,0), 
	"NUM_REC_CARTERA_EMITIDOS" NUMBER(4,0), 
	"NUM_REC_CARTERA_ANULADOS" NUMBER(4,0), 
	"NUM_REC_RECURRENTES_EMITIDOS" NUMBER(4,0), 
	"NUM_REC_RECURRENTES_ANULADOS" NUMBER(4,0), 
	"FORMA_PAGO" VARCHAR2(2 BYTE), 
	"TIPO" VARCHAR2(4 BYTE), 
	"COM_DEVENG_PRODUCCION_EMISION" NUMBER(15,3), 
	"COM_DEVENG_PRODUCCION_ANULACI" NUMBER(15,3), 
	"COM_DEVENG_CARTERA_EMISION" NUMBER(15,3), 
	"COM_DEVENG_CARTERA_ANULACION" NUMBER(15,3), 
	"COM_DEVENG_RECUR_EMISION" NUMBER(15,3), 
	"COM_DEVENG_RECUR_ANULACION" NUMBER(15,3), 
	"COM_PRODUCCION_COBROS" NUMBER(15,3), 
	"COM_PRODUCCION_DEVOLUCIONES" NUMBER(15,3), 
	"COM_CARTERA_COBROS" NUMBER(15,3), 
	"COM_CARTERA_DEVOLUCIONES" NUMBER(15,3), 
	"IMPORTE_DESCUENTO_OM" NUMBER(15,3), 
	"FEC_CONTRATACION" VARCHAR2(10 BYTE), 
	"FEC_EFECTO" VARCHAR2(10 BYTE), 
	"FEC_VENCIMIENTO" VARCHAR2(10 BYTE), 
	"FEC_ANULACION" VARCHAR2(10 BYTE), 
	"FEC_INICIO_PERIODO" VARCHAR2(10 BYTE), 
	"FEC_FIN_PERIODO" VARCHAR2(10 BYTE), 
	"NUM_SINIESTROS" NUMBER(4,0), 
	"IMPORTE_PAGOS" NUMBER(15,3), 
	"PRIMA_NETA_ANUALIZADA" NUMBER(15,3), 
	"PROVISION_MATEMATICA" NUMBER(15,3), 
	"NUM_PARTIPACIONES" NUMBER(15,3), 
	"VALOR_PARTICIPACION" NUMBER(15,3), 
	"COMISION_RESPU" NUMBER(15,3), 
	"CUENTA_CORRIENTE" VARCHAR2(20 BYTE), 
	"POLIZA_ASEGURADORA" VARCHAR2(20 BYTE), 
	"CIA_ASEGURADORA" VARCHAR2(6 BYTE), 
	"BENEFICIARIO" VARCHAR2(126 BYTE), 
	"AGRU1" VARCHAR2(60 BYTE), 
	"AGRU2" VARCHAR2(80 BYTE), 
	"IMPORTE_PRIMA_UNICA" NUMBER(15,3), 
	"APORT_PROMOTOR_EXT" NUMBER(15,3), 
	"ANUL_APORT_PROMOTOR_EXT" NUMBER(15,3), 
	"TRASPASOS_ENTRADA" NUMBER(15,3), 
	"TRASPASOS_SALIDA" NUMBER(15,3), 
	"TRASPASOS_INTERNOS_ENT" NUMBER(15,3), 
	"TRASPASOS_INTERNOS_SAL" NUMBER(15,3), 
	"INVERCO" VARCHAR2(30 BYTE), 
	"NIF_TOMADOR" VARCHAR2(14 BYTE), 
	"NOMBRE_TOMADOR" VARCHAR2(100 BYTE), 
	"APELLIDOS_TOMADOR" VARCHAR2(40 BYTE), 
	"DIRECCION_TOMADOR" VARCHAR2(80 BYTE), 
	"CP_TOMADOR" VARCHAR2(5 BYTE), 
	"POBLACION_TOMADOR" VARCHAR2(40 BYTE), 
	"PROVINCIA_TOMADOR" VARCHAR2(20 BYTE), 
	"FEC_NAC_TOMADOR" VARCHAR2(10 BYTE), 
	"IMPORTE_VALOR_RESCATE" NUMBER(15,3), 
	"IMPORTE_PB" NUMBER(15,3), 
	"IMPORTE_FACTURACION_ACUMULADA" NUMBER(15,3), 
	"MOTIVO_ANULACION" VARCHAR2(60 BYTE), 
	"IMP_PRESTA_PENSIONES_CAPITAL" NUMBER(15,3), 
	"IMP_PRESTA_PENS_RENT_FINANCIE" NUMBER(15,3), 
	"IMP_PRESTA_PENS_A_VIDA" NUMBER(15,3), 
	"IMP_PRESTA_PENS_DE_VIDA" NUMBER(15,3), 
	"IMP_PRESTA_PENS_RENT_ASEGURAD" NUMBER(15,3), 
	"IMP_PRESTA_PENS_RETENCIONES" NUMBER(15,3), 
	"IMP_PRESTA_VIDA_SINIESTROS" NUMBER(15,3), 
	"IMP_PRESTA_VIDA_VENCIMIENTOS" NUMBER(15,3), 
	"IMP_PRESTA_VIDA_RESCATES" NUMBER(15,3), 
	"IMP_PRESTA_VIDA_RENTAS" NUMBER(15,3), 
	"IMP_CAPITAL_FINAL_VIDA" NUMBER(15,3), 
	"CAPITAL_ASEGURADO" NUMBER(15,3), 
	"NUM_SINIESTROS_PENDIENTES" NUMBER(4,0), 
	"NUM_SINIESTROS_CERRADOS" NUMBER(4,0), 
	"CAPITAL_2" NUMBER(15,3), 
	"CAPITAL_3" NUMBER(15,3), 
	"CAPITAL_4" NUMBER(15,3), 
	"CAPITAL_5" NUMBER(15,3), 
	"IMPORTE_CALENDARIO" NUMBER(15,3), 
	"NCARGA" NUMBER, 
	"TIPO_OPER" VARCHAR2(10 BYTE), 
	"PROCESO" NUMBER(6,0), 
	"IMP_APORT_EXTRAORD_NETA" NUMBER(15,3), 
	"IMP_FACT_CASADA_NETA" NUMBER(15,3), 
	"TRASPASO_ENTRADA_RGA" NUMBER(15,3), 
	"TRASPASO_SALIDA_RGA" NUMBER(15,3)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INT_RGA"."SINTERF" IS 'Secuencia de la interfaz';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."NLINEA" IS 'N�mero de linea';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."EMPRESA" IS 'C�digo de la Compa��a';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."PRODUCTO" IS 'C�digo del Producto';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."POLIZA_PARTICIPE" IS 'N�mero de P�liza';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."NIF" IS 'NIF/CIF del Asegurado';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."NOMBRE" IS 'Nombre del Asegurado';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."APELLIDOS" IS 'Apellidos del Asegurado';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."DIRECCION" IS 'Direcci�n del Asegurado';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."CP" IS 'C�digo Postal del Asegurado';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."POBLACION" IS 'Poblaci�n del Asegurado';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."PROVINCIA" IS 'Provincia del Asegurado';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."FEC_NAC" IS 'Fecha de Nacimiento del Asegurado';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."CAJA_GESTORA" IS 'Caja que gestiona la p�liza';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."CAJA_COBRADORA" IS 'Sin contenido en la actualidad';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."OFICINA_GESTORA" IS 'Oficina que gestiona la p�liza';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."OFICINA_COBRADORA" IS 'Sin contenido en la actualidad';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."EMPLEADO" IS 'C�digo empleado';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMPORTE_EMITIDOS_PROD" IS 'Importes emitidos de producci�n';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMPORTE_ANULADOS_PROD" IS 'Importes anulados de producci�n';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMPORTE_EMITIDOS_CART" IS 'Importes emitidos de cartera';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMPORTE_ANULADOS_CART" IS 'Importes anulados de cartera';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMPORTE_EMITIDOS_RECUR" IS 'Importes emitidos Recurrentes';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMPORTE_ANULADOS_RECUR" IS 'Importes anulados Recurrentes';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."NUM_REC_PRODUCCION_EMITIDOS" IS 'N�mero de recibos de producci�n emitidos';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."NUM_REC_PRODUCCION_ANULADOS" IS 'N�mero de recibos de producci�n anulados';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."NUM_REC_CARTERA_EMITIDOS" IS 'N�mero de recibos de cartera emitidos';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."NUM_REC_CARTERA_ANULADOS" IS 'N�mero de recibos de cartera anulados';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."NUM_REC_RECURRENTES_EMITIDOS" IS 'N�mero de recibos recurrentes emitidos';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."NUM_REC_RECURRENTES_ANULADOS" IS 'N�mero de recibos recurrentes anulados';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."FORMA_PAGO" IS 'Forma de Pago';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."TIPO" IS 'En caso de pensiones indica si es aportaci�n peri�dica o extraordinaria';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."COM_DEVENG_PRODUCCION_EMISION" IS 'Comisi�n Devengadada de producci�n emisi�n';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."COM_DEVENG_PRODUCCION_ANULACI" IS 'Comisi�n Devengadada de producci�n anulaci�n';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."COM_DEVENG_CARTERA_EMISION" IS 'Comisi�n Devengadada de cartera emisi�n';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."COM_DEVENG_CARTERA_ANULACION" IS 'Comisi�n Devengadada de cartera anulaci�n';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."COM_DEVENG_RECUR_EMISION" IS 'Comisi�n Devengadada de recurrente emisi�n';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."COM_DEVENG_RECUR_ANULACION" IS 'Comisi�n Devengadada de recurrente anulaci�n';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."COM_PRODUCCION_COBROS" IS 'Comisi�n Producc�n devoluciones';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."COM_CARTERA_COBROS" IS 'Comisi�n Cartera cobros';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."COM_CARTERA_DEVOLUCIONES" IS 'Comisi�n Cartera devoluciones';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMPORTE_DESCUENTO_OM" IS 'Importe descuento OM';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."FEC_CONTRATACION" IS 'Fecha de contrataci�n';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."FEC_EFECTO" IS 'Fecha de efecto';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."FEC_VENCIMIENTO" IS 'Fecha de vencimiento';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."FEC_ANULACION" IS 'Fecha de anulaci�n';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."FEC_INICIO_PERIODO" IS 'Fecha de inicio de periodo';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."FEC_FIN_PERIODO" IS 'Fecha de fin de periodo';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."NUM_SINIESTROS" IS 'N�mero de Siniestros';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMPORTE_PAGOS" IS 'Importe de pagos del siniestro';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."PRIMA_NETA_ANUALIZADA" IS 'Prima neta anualizada';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."PROVISION_MATEMATICA" IS 'Provisi�n Matem�tica';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."NUM_PARTIPACIONES" IS 'N�mero de Participaciones';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."VALOR_PARTICIPACION" IS 'Valor de cada participaci�n';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."COMISION_RESPU" IS 'Comisiones cobradas generadas por Reservas';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."CUENTA_CORRIENTE" IS 'Cuenta corriente';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."POLIZA_ASEGURADORA" IS 'C�digo de p�liza de compa��a aseguradora';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."CIA_ASEGURADORA" IS 'Compa��a aseguradora';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."BENEFICIARIO" IS 'Nombre del beneficiario';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."AGRU1" IS 'Primer criterio de agrupaci�n de productos';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."AGRU2" IS 'Segundo criterio de agrupaci�n de productos';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMPORTE_PRIMA_UNICA" IS 'Importe de prima �nica';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."APORT_PROMOTOR_EXT" IS 'Aportaciones extraordinarias de promotor';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."ANUL_APORT_PROMOTOR_EXT" IS 'Anulaci�n de aportaciones extraordinarias de promotor';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."TRASPASOS_ENTRADA" IS 'Importe de traspasos de entrada';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."TRASPASOS_SALIDA" IS 'Importe de traspasos de salida';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."TRASPASOS_INTERNOS_ENT" IS 'Importe de traspasos internos de entrada';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."TRASPASOS_INTERNOS_SAL" IS 'Importe de traspasos internos de salida';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."INVERCO" IS 'C�digo asignado por INVERCO';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."NIF_TOMADOR" IS 'NIF/CIF del Tomador';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."NOMBRE_TOMADOR" IS 'Nombre del Tomador';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."APELLIDOS_TOMADOR" IS 'Apellidos del Tomador';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."DIRECCION_TOMADOR" IS 'Direcci�n del Tomador';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."CP_TOMADOR" IS 'C�digo Postal del Tomador';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."POBLACION_TOMADOR" IS 'Poblaci�n del Tomador';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."PROVINCIA_TOMADOR" IS 'Provincia del Tomador';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."FEC_NAC_TOMADOR" IS 'Fecha de nacimiento del Tomador';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMPORTE_VALOR_RESCATE" IS 'Importe Valor Rescate';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMPORTE_PB" IS 'Importe de rentabilidad';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMPORTE_FACTURACION_ACUMULADA" IS 'Importe facturaci�n acumulada';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."MOTIVO_ANULACION" IS 'Motivo de anulaci�n';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMP_PRESTA_PENSIONES_CAPITAL" IS 'Importe de prestaciones de pensiones en forma de capital';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMP_PRESTA_PENS_RENT_FINANCIE" IS 'Importe de prestaciones de pensiones en forma de renta financiera';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMP_PRESTA_PENS_A_VIDA" IS 'Importe de prestaciones de pensiones realizadas a Rural Vida';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMP_PRESTA_PENS_DE_VIDA" IS 'Importe de prestaciones de pensiones realizadas por Rural Vida';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMP_PRESTA_PENS_RENT_ASEGURAD" IS 'Importe de prestaciones de pensiones realizadas en forma de rentas aseguradas';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMP_PRESTA_PENS_RETENCIONES" IS 'Importe de las retenciones de prestaciones de pensiones';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMP_PRESTA_VIDA_SINIESTROS" IS 'Importe de las prestaciones de vida percibidas por siniestro';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMP_PRESTA_VIDA_VENCIMIENTOS" IS 'Importe de las prestaciones de vida percibidas por vencimiento';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMP_PRESTA_VIDA_RESCATES" IS 'Importe de las prestaciones de vida percibidas por rescates';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMP_PRESTA_VIDA_RENTAS" IS 'Importe de las prestaciones de vida percibidas por rentas';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMP_CAPITAL_FINAL_VIDA" IS 'Importe de Capital Final';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."CAPITAL_ASEGURADO" IS 'Capitales Asegurados para la cobertura de fallecimiento';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."NUM_SINIESTROS_PENDIENTES" IS 'N�mero de siniestros pendientes';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."NUM_SINIESTROS_CERRADOS" IS 'N�mero de siniestros cerrados';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."CAPITAL_2" IS 'Importe de Capital para Mobiliario y Ajuar';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."CAPITAL_3" IS 'Importe de Capital para Joyas fuera de la Caja';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."CAPITAL_4" IS 'Importe de Capital para Joyas en Caja Fuerte';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."CAPITAL_5" IS 'Importe de Capital para Objetos de Valor';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMPORTE_CALENDARIO" IS 'Importe de la Aportaci�n peri�dica de calendario en pensiones';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."NCARGA" IS 'N�mero de Carga';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."TIPO_OPER" IS 'Tipo de operaci�n';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."PROCESO" IS 'Id. proceso';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMP_APORT_EXTRAORD_NETA" IS 'Aport. extraordinaria';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."IMP_FACT_CASADA_NETA" IS 'Imp. fact. casada';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."TRASPASO_ENTRADA_RGA" IS 'Trasp ent. RGA';
   COMMENT ON COLUMN "AXIS"."INT_RGA"."TRASPASO_SALIDA_RGA" IS 'Trasp sal. RGA';
   COMMENT ON TABLE "AXIS"."INT_RGA"  IS 'Tabla Externa para cargar las p�lizas enviadas por RGA';
  GRANT UPDATE ON "AXIS"."INT_RGA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_RGA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INT_RGA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INT_RGA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_RGA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INT_RGA" TO "PROGRAMADORESCSI";
