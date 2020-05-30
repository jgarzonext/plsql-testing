--------------------------------------------------------
--  DDL for Table TMP_GARANCAR
--------------------------------------------------------

  CREATE TABLE "AXIS"."TMP_GARANCAR" 
   (	"SSEGURO" NUMBER, 
	"CGARANT" NUMBER(4,0), 
	"FINIEFE" DATE, 
	"NRIESGO" NUMBER(6,0), 
	"NORDEN" NUMBER(4,0), 
	"CTARIFA" NUMBER(5,0), 
	"ICAPITAL" NUMBER, 
	"PRECARG" NUMBER(6,2), 
	"IPRIANU" NUMBER, 
	"FFINEFE" DATE, 
	"CFORMUL" NUMBER(4,0), 
	"IEXTRAP" NUMBER(19,12), 
	"SPROCES" NUMBER, 
	"CTIPFRA" NUMBER(1,0), 
	"IFRANQU" NUMBER, 
	"IRECARG" NUMBER, 
	"IPRITAR" NUMBER, 
	"PDTOCOM" NUMBER(6,2), 
	"IDTOCOM" NUMBER, 
	"CREVALI" NUMBER(2,0), 
	"IREVALI" NUMBER, 
	"PREVALI" NUMBER(5,2), 
	"ITARIFA" NUMBER(19,12), 
	"ITARREA" NUMBER(24,12), 
	"IPRITOT" NUMBER, 
	"ICAPTOT" NUMBER, 
	"FTARIFA" DATE, 
	"CCAMPANYA" NUMBER(3,0), 
	"NVERSIO" NUMBER(3,0), 
	"CDERREG" NUMBER(1,0), 
	"FEPREV" DATE, 
	"FPPREV" DATE, 
	"PERCRE" NUMBER(2,0), 
	"CREF" NUMBER(1,0), 
	"CINTREF" NUMBER(3,0), 
	"PDIF" NUMBER(5,2), 
	"PINTTEC" NUMBER(5,2), 
	"NPARBEN" NUMBER(1,0), 
	"NBNS" NUMBER(1,0), 
	"TMGARAN" NUMBER, 
	"CMATCH" NUMBER(1,0), 
	"TDESMAT" VARCHAR2(75 BYTE), 
	"PINTFIN" NUMBER(5,2), 
	"NMOVIMA" NUMBER(4,0) DEFAULT 1, 
	"CAGEVEN" NUMBER(6,0), 
	"IDTOINT" NUMBER, 
	"NFACTOR" NUMBER, 
	"NMOVI_ANT" NUMBER(4,0), 
	"CANULADO" NUMBER(1,0), 
	"NLINEA" NUMBER(3,0), 
	"PDTOINT" NUMBER(5,2), 
	"SCONTRA" NUMBER(6,0), 
	"NVERCON" NUMBER(2,0), 
	"CMOTMOV" NUMBER(3,0), 
	"FINIDER" DATE, 
	"FALTA" DATE, 
	"CTARMAN" NUMBER(2,0), 
	"CFRANQ" NUMBER(6,0), 
	"NFRAVER" NUMBER(6,0), 
	"NGRPFRA" NUMBER(6,0), 
	"NGRPGARA" NUMBER(6,0), 
	"NORDFRA" NUMBER(6,0), 
	"PDTOFRA" NUMBER(7,4), 
	"CREVALCAR" NUMBER(1,0), 
	"IPRITARREA" NUMBER, 
	"IDTOSEL" NUMBER, 
	"PSOBREPRIMA" NUMBER(8,5), 
	"ICAPREA" NUMBER, 
	"ICAPACI" NUMBER, 
	"IPLENO" NUMBER, 
	"CFACULT" NUMBER(1,0), 
	"IEXTREA" NUMBER, 
	"CACTIVI" NUMBER(4,0), 
	"NDETGAR" NUMBER(4,0) DEFAULT 0, 
	"FEFECTO" DATE, 
	"FVENCIM" DATE, 
	"NDURCOB" NUMBER(3,0), 
	"CPARBEN" VARCHAR2(2 BYTE), 
	"CPREPOST" NUMBER(1,0), 
	"FFINCOB" DATE, 
	"PROVMAT0" NUMBER, 
	"FPROVMAT0" DATE, 
	"PROVMAT1" NUMBER, 
	"FPROVMAT1" DATE, 
	"PINTMIN" NUMBER(6,2), 
	"IPRIPUR" NUMBER, 
	"IPRIINV" NUMBER, 
	"CONTADOR" NUMBER, 
	"CUNICA" NUMBER(1,0) DEFAULT 0, 
	"SITARIFA" NUMBER(1,0) DEFAULT 1, 
	"PDTOTEC" NUMBER(6,2), 
	"PRECCOM" NUMBER(6,2), 
	"IDTOTEC" NUMBER, 
	"IRECCOM" NUMBER, 
	"ITARIFREA" NUMBER(15,4), 
	"IPRICOM" NUMBER, 
	"FINIVIG" DATE, 
	"FFINVIG" DATE, 
	"CCOBPRIMA" NUMBER, 
	"IPRIDEV" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."SSEGURO" IS 'N�mero de seguro';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."CGARANT" IS 'C�digo de garant�a';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."FINIEFE" IS 'Fecha inicio';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."NRIESGO" IS 'N�mero de riesgo';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."NORDEN" IS 'N�mero de orden';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."CTARIFA" IS 'C�digo de tarifa';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."ICAPITAL" IS 'Importe garant�a';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."PRECARG" IS 'Porcentaje recargo';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."IPRIANU" IS 'Importe prima anual';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."FFINEFE" IS 'Fecha fin efecto';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."CFORMUL" IS 'C�digo de f�rmula';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."IEXTRAP" IS 'Factor Extraprima';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."SPROCES" IS 'N�mero de proceso';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."CTIPFRA" IS 'Tipo de franquicia';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."IFRANQU" IS 'Importe franquicia';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."IRECARG" IS 'Importe recargo';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."IPRITAR" IS 'Importe prima tarifa';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."PDTOCOM" IS 'Porcentaje de descuento';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."IDTOCOM" IS 'Importe de descuento';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."CREVALI" IS 'C�digo de revalorizaci�n';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."IREVALI" IS 'Importe de revalorizaci�n';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."PREVALI" IS 'Porcentaje de revalorizaci�n';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."CCAMPANYA" IS 'C�digo de campa�a (promoci�n) asignado a esta garant�a';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."NVERSIO" IS 'N�mero de versi�n de la campa�a';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."PDIF" IS 'Diferencial de Intereses';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."NMOVIMA" IS 'N�mero de movimiento de alta';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."CAGEVEN" IS 'C�digo de agente de venta';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."NFACTOR" IS 'Factor multiplicador para revalorizar la prima';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."NMOVI_ANT" IS 'C�digo del movimiento anterior al que se esta tarifando';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."CANULADO" IS 'Garantia anulada por edad 1,vigente otros valores';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."NLINEA" IS 'N�mero de garant�a relativa a p�liza (ALN)';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."PDTOINT" IS 'Porcentaje descuento integral';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."SCONTRA" IS 'N�mero de contrato';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."NVERCON" IS 'N�mero de versi�n del contrato';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."CMOTMOV" IS 'C�digo motivo de movimiento, solo informado en las garant�as que se ha producido un cambio de producto';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."FINIDER" IS 'Fecha Inicio de Derechos.';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."FALTA" IS 'Fecha en que se dio de alta la Garant�a';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."CTARMAN" IS 'Tipo de tarifa manual';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."CFRANQ" IS 'C�digo de franquicia';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."NFRAVER" IS 'N�mero versi�n de franquicia';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."NGRPFRA" IS 'C�digo de grupo de franquicias';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."NGRPGARA" IS 'C�digo de grupo de garantias para franquicia';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."NORDFRA" IS 'Orden Franquicia (pk detfranquicias)';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."PDTOFRA" IS 'Porcentaje de descuento de la franquicia';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."CREVALCAR" IS '0.- No revaloritza a la cartera, 1.- Si revaloriza a la cartera';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."IPRITARREA" IS 'Prima de tarifa';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."IDTOSEL" IS 'Importe descuento de selecci�n';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."PSOBREPRIMA" IS 'Porcentaje sobreprima';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."ICAPREA" IS 'Import de capital cedit';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."ICAPACI" IS 'Import de la capacitat del contracte';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."IPLENO" IS 'Import del ple del contracte per garantia';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."CFACULT" IS 'Codi de facultatiu 0-Normal 1-Pur';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."IEXTREA" IS 'Extraprima a reasegurar (ya incluida en la prima [IPRITARREA])';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."CACTIVI" IS 'C�digo de la actividad';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."NDETGAR" IS 'N�mero de detalle (utilizado si tiene detalle)';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."FEFECTO" IS 'Fecha efecto del detalle';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."FVENCIM" IS 'Fecha vencimiento del detalle';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."NDURCOB" IS 'Duraci�n de los pagos del detalle';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."FFINCOB" IS 'Fecha fin de pagos del detalle';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."PROVMAT0" IS 'Provisi�n T0';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."FPROVMAT0" IS 'Fecha provisi�n T0';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."PROVMAT1" IS 'Provisi�n T1';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."FPROVMAT1" IS 'Fecha provisi�n T1';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."PINTMIN" IS 'Inter�s m�nimo garantizado';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."IPRIPUR" IS 'Importe prima pura';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."CONTADOR" IS 'Contador de tarificaci�n para el detalle de garant�a referenciado';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."CUNICA" IS 'Indicador de aportaci�n �nica o extraordinaria';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."SITARIFA" IS 'Indicador si tarifa o no';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."PDTOTEC" IS 'Porcentaje descuento t�cnico';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."PRECCOM" IS 'Porcentaje recargo comercial';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."IDTOTEC" IS 'Importe descuento t�cnico';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."IRECCOM" IS 'Importe recargo comercial';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."ITARIFREA" IS 'Tasa de Reaseguro';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."IPRICOM" IS 'Importe sobre el que se ha de calcular la comisi�n';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."FINIVIG" IS 'Fecha inicio vigencia cobertura';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."FFINVIG" IS 'Fecha fin vigencia cobertura';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."CCOBPRIMA" IS 'Cobra Prima';
   COMMENT ON COLUMN "AXIS"."TMP_GARANCAR"."IPRIDEV" IS 'Prima Devengada';
  GRANT UPDATE ON "AXIS"."TMP_GARANCAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_GARANCAR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TMP_GARANCAR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TMP_GARANCAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_GARANCAR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TMP_GARANCAR" TO "PROGRAMADORESCSI";