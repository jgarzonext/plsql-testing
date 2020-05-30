--------------------------------------------------------
--  DDL for Table ANUGARANSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."ANUGARANSEG" 
   (	"CGARANT" NUMBER(4,0), 
	"NRIESGO" NUMBER(6,0), 
	"NMOVIMI" NUMBER(4,0), 
	"SSEGURO" NUMBER, 
	"FINIEFE" DATE, 
	"NORDEN" NUMBER(4,0), 
	"CREVALI" NUMBER(2,0), 
	"CTARIFA" NUMBER(5,0), 
	"ICAPITAL" NUMBER, 
	"PRECARG" NUMBER(6,2), 
	"IEXTRAP" NUMBER(19,12), 
	"IPRIANU" NUMBER, 
	"FFINEFE" DATE, 
	"CFORMUL" NUMBER(4,0), 
	"CTIPFRA" NUMBER(1,0), 
	"IFRANQU" NUMBER, 
	"IRECARG" NUMBER, 
	"IPRITAR" NUMBER, 
	"PDTOCOM" NUMBER(6,2), 
	"IDTOCOM" NUMBER, 
	"PREVALI" NUMBER(8,5), 
	"IREVALI" NUMBER, 
	"ITARIFA" NUMBER(19,12), 
	"ITARREA" NUMBER(24,12), 
	"IPRITOT" NUMBER, 
	"ICAPTOT" NUMBER, 
	"PDTOINT" NUMBER(5,2), 
	"IDTOINT" NUMBER, 
	"FTARIFA" DATE, 
	"CDERREG" NUMBER(1,0), 
	"FEPREV" DATE, 
	"FPPREV" DATE, 
	"PERCRE" NUMBER(2,0), 
	"CCAMPANYA" NUMBER(3,0), 
	"NVERSIO" NUMBER(3,0), 
	"CREVALCAR" NUMBER(1,0), 
	"CMATCH" NUMBER(1,0), 
	"TDESMAT" VARCHAR2(75 BYTE), 
	"PINTFIN" NUMBER(5,2), 
	"CREF" NUMBER(1,0), 
	"CINTREF" NUMBER(3,0), 
	"PDIF" NUMBER(5,2), 
	"PINTTEC" NUMBER(5,2), 
	"NPARBEN" NUMBER(1,0), 
	"NBNS" NUMBER(1,0), 
	"TMGARAN" NUMBER, 
	"CAGEVEN" NUMBER(6,0), 
	"NMOVIMA" NUMBER(4,0) DEFAULT 1, 
	"NLINEA" NUMBER(3,0), 
	"NFACTOR" NUMBER, 
	"CMOTMOV" NUMBER(3,0), 
	"FINIDER" DATE, 
	"CFRANQ" NUMBER(6,0), 
	"CTARMAN" NUMBER(2,0), 
	"FALTA" DATE, 
	"NFRAVER" NUMBER(6,0), 
	"NGRPFRA" NUMBER(6,0), 
	"NGRPGARA" NUMBER(6,0), 
	"NORDFRA" NUMBER(6,0), 
	"PDTOFRA" NUMBER(7,4), 
	"PDTOTEC" NUMBER(6,2), 
	"PRECCOM" NUMBER(6,2), 
	"IDTOTEC" NUMBER, 
	"IRECCOM" NUMBER, 
	"IPRICOM" NUMBER, 
	"FINIVIG" DATE, 
	"FFINVIG" DATE, 
	"CCOBPRIMA" NUMBER, 
	"IPRIDEV" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."CGARANT" IS 'C�digo de garant�a';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."NRIESGO" IS 'N�mero de riesgo anulado';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."NMOVIMI" IS 'N�mero de movimiento anulado';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."SSEGURO" IS 'N�mero consecutivo de seguro asignado autom�ticamente.';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."FINIEFE" IS 'fecha inicio de efecto';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."NORDEN" IS 'N�mero de orden.';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."CREVALI" IS 'Tipo de revalorizacion. CVALOR: 62';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."CTARIFA" IS 'C�digo de tarifa';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."ICAPITAL" IS 'Importe capital';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."PRECARG" IS 'Porcentaje de recargo';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."IEXTRAP" IS 'Extraprima';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."IPRIANU" IS 'Importe prima anual';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."FFINEFE" IS 'fecha fin de efecto';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."CFORMUL" IS 'F�rmula utilizada en la tarifa';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."CTIPFRA" IS 'Tipo de franquicia';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."IFRANQU" IS 'Importe franquicia';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."IRECARG" IS 'Importe del recargo';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."IPRITAR" IS 'Importe tarifa';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."PDTOCOM" IS 'Porcentaje descuento comercial';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."IDTOCOM" IS 'Importe descuento comercial';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."PREVALI" IS 'Porcentaje de revalorizacion';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."IREVALI" IS 'Importe de revalorizaci�n';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."ITARIFA" IS 'Tarifa + extraprima';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."ITARREA" IS 'Tarifa reaseguro';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."IPRITOT" IS 'Importe prima anual total';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."ICAPTOT" IS 'Importe capital total';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."PDTOINT" IS 'Porcentaje de descuento integral';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."IDTOINT" IS 'Importe de descuento integral';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."FTARIFA" IS 'Fecha tarifa, fefecto de la p�liza. Si hay cambio tarifas, fecha efecto renovaci�n que cambia la tarifa.';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."CDERREG" IS 'Derechos de registro ,1 si ;0,null No';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."FEPREV" IS 'Fecha de primera revisi�n de la aportaci�n peri�dica';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."FPPREV" IS 'Fecha de pr�xima revisi�n de la aportaci�n peri�dica';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."PERCRE" IS 'Periodicidad para la revisi�n del crecimiento de la aportaci�n peri�dica';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."CCAMPANYA" IS 'C�digo de campa�a (promoci�n) asignado a esta garant�a';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."NVERSIO" IS 'N�mero de versi�n de la campa�a';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."CREVALCAR" IS '0.- No revaloritza a la cartera, 1.- Si revaloriza a la cartera';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."CMATCH" IS 'Indicador de si se permite maching';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."TDESMAT" IS 'Descripci�n de la inversi�n';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."PINTFIN" IS 'Porcentaje de Inter�s Financiero de la Inversi�n';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."CREF" IS 'Tipo de Inter�s.VF=841';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."CINTREF" IS 'C�digo Inter�s Referenciado';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."PDIF" IS 'Diferencial de Intereses';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."PINTTEC" IS 'Porcentaje de Inter�s T�cnico';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."NPARBEN" IS 'Indicador de si el seguro tiene participaci�n en Beneficios';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."NBNS" IS 'Indicador de si el seguro tiene Desviaci�n Favorable por no siniestralidad';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."TMGARAN" IS 'Clave for�nea de Codmortalidad_Par';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."CAGEVEN" IS 'C�digo de agente de venta';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."NMOVIMA" IS 'N�mero de movimiento de alta';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."NLINEA" IS 'N�mero de garant�a relativa a p�liza (ALN)';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."NFACTOR" IS 'Factor multiplicador para revalorizar la prima';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."CMOTMOV" IS 'C�digo motivo de movimiento, solo informado en las garant�as que se ha producido un cambio de producto';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."FINIDER" IS 'Fecha Inicio de Derechos.';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."CFRANQ" IS 'C�digo de franquicia';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."CTARMAN" IS 'Tipo de tarifa manual';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."FALTA" IS 'Fecha en que se dio de alta la Garant�a';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."NFRAVER" IS 'N�mero versi�n de franquicia';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."NGRPFRA" IS 'C�digo de grupo de franquicias';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."NGRPGARA" IS 'C�digo de grupo de garantias para franquicia';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."NORDFRA" IS 'Orden Franquicia (pk detfranquicias)';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."PDTOFRA" IS 'Porcentaje de descuento de la franquicia';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."PDTOTEC" IS 'Porcentaje descuento t�cnico';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."PRECCOM" IS 'Porcentaje recargo comercial';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."IDTOTEC" IS 'Importe descuento t�cnico';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."IRECCOM" IS 'Importe recargo comercial';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."IPRICOM" IS 'Importe sobre el que se ha de calcular la comisi�n';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."FINIVIG" IS 'Fecha inicio vigencia cobertura';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."FFINVIG" IS 'Fecha fin vigencia cobertura';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."CCOBPRIMA" IS 'Cobra Prima';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEG"."IPRIDEV" IS 'Prima Devengada';
   COMMENT ON TABLE "AXIS"."ANUGARANSEG"  IS 'Informaci�n garantias, guardada antes de anular movimiento';
  GRANT UPDATE ON "AXIS"."ANUGARANSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUGARANSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ANUGARANSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ANUGARANSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUGARANSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ANUGARANSEG" TO "PROGRAMADORESCSI";
