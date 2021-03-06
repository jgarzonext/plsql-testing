--------------------------------------------------------
--  DDL for Table GARANSEGDET
--------------------------------------------------------

  CREATE TABLE "AXIS"."GARANSEGDET" 
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
	"IPRICOM" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."SSEGURO" IS 'N�mero de seguro';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."CGARANT" IS 'C�digo de garant�a';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."FINIEFE" IS 'Fecha inicio';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."NRIESGO" IS 'N�mero de riesgo';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."NORDEN" IS 'N�mero de orden';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."CTARIFA" IS 'C�digo de tarifa';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."ICAPITAL" IS 'Importe garant�a';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."PRECARG" IS 'Porcentaje recargo';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."IPRIANU" IS 'Importe prima anual';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."FFINEFE" IS 'Fecha fin efecto';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."CFORMUL" IS 'C�digo de f�rmula';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."IEXTRAP" IS 'Factor Extraprima';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."SPROCES" IS 'N�mero de proceso';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."CTIPFRA" IS 'Tipo de franquicia';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."IFRANQU" IS 'Importe franquicia';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."IRECARG" IS 'Importe recargo';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."IPRITAR" IS 'Importe prima tarifa';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."PDTOCOM" IS 'Porcentaje de descuento';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."IDTOCOM" IS 'Importe de descuento';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."CREVALI" IS 'C�digo de revalorizaci�n';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."IREVALI" IS 'Importe de revalorizaci�n';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."PREVALI" IS 'Porcentaje de revalorizaci�n';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."CCAMPANYA" IS 'C�digo de campa�a (promoci�n) asignado a esta garant�a';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."NVERSIO" IS 'N�mero de versi�n de la campa�a';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."PDIF" IS 'Diferencial de Intereses';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."NMOVIMA" IS 'N�mero de movimiento de alta';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."CAGEVEN" IS 'C�digo de agente de venta';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."NFACTOR" IS 'Factor multiplicador para revalorizar la prima';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."NMOVI_ANT" IS 'C�digo del movimiento anterior al que se esta tarifando';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."CANULADO" IS 'Garantia anulada por edad 1,vigente otros valores';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."NLINEA" IS 'N�mero de garant�a relativa a p�liza (ALN)';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."PDTOINT" IS 'Porcentaje descuento integral';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."SCONTRA" IS 'N�mero de contrato';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."NVERCON" IS 'N�mero de versi�n del contrato';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."CMOTMOV" IS 'C�digo motivo de movimiento, solo informado en las garant�as que se ha producido un cambio de producto';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."FINIDER" IS 'Fecha Inicio de Derechos.';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."FALTA" IS 'Fecha en que se dio de alta la Garant�a';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."CTARMAN" IS 'Tipo de tarifa manual';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."CFRANQ" IS 'C�digo de franquicia';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."NFRAVER" IS 'N�mero versi�n de franquicia';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."NGRPFRA" IS 'C�digo de grupo de franquicias';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."NGRPGARA" IS 'C�digo de grupo de garantias para franquicia';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."NORDFRA" IS 'Orden Franquicia (pk detfranquicias)';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."PDTOFRA" IS 'Porcentaje de descuento de la franquicia';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."CREVALCAR" IS '0.- No revaloritza a la cartera, 1.- Si revaloriza a la cartera';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."IPRITARREA" IS 'Prima de tarifa';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."IDTOSEL" IS 'Importe descuento de selecci�n';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."PSOBREPRIMA" IS 'Porcentaje sobreprima';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."ICAPREA" IS 'Import de capital cedit';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."ICAPACI" IS 'Import de la capacitat del contracte';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."IPLENO" IS 'Import del ple del contracte per garantia';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."CFACULT" IS 'Codi de facultatiu 0-Normal 1-Pur';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."IEXTREA" IS 'Extraprima a reasegurar (ya incluida en la prima [IPRITARREA])';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."CACTIVI" IS 'C�digo de la actividad';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."NDETGAR" IS 'N�mero de detalle (utilizado si tiene detalle)';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."FEFECTO" IS 'Fecha efecto del detalle';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."FVENCIM" IS 'Fecha vencimiento del detalle';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."NDURCOB" IS 'Duraci�n de los pagos del detalle';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."FFINCOB" IS 'Fecha fin de pagos del detalle';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."PROVMAT0" IS 'Provisi�n T0';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."FPROVMAT0" IS 'Fecha provisi�n T0';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."PROVMAT1" IS 'Provisi�n T1';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."FPROVMAT1" IS 'Fecha provisi�n T1';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."PINTMIN" IS 'Inter�s m�nimo garantizado';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."IPRIPUR" IS 'Importe prima pura';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."CONTADOR" IS 'Contador de tarificaci�n para el detalle de garant�a referenciado';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."CUNICA" IS 'Indicador de aportaci�n �nica o extraordinaria';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."SITARIFA" IS 'Indicador si tarifa o no';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."PDTOTEC" IS 'Porcentaje descuento t�cnico';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."PRECCOM" IS 'Porcentaje recargo comercial';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."IDTOTEC" IS 'Importe descuento t�cnico';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."IRECCOM" IS 'Importe recargo comercial';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."ITARIFREA" IS 'Tasa de Reaseguro';
   COMMENT ON COLUMN "AXIS"."GARANSEGDET"."IPRICOM" IS 'Importe sobre el que se ha de calcular la comisi�n';
  GRANT UPDATE ON "AXIS"."GARANSEGDET" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GARANSEGDET" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."GARANSEGDET" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."GARANSEGDET" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GARANSEGDET" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."GARANSEGDET" TO "PROGRAMADORESCSI";
