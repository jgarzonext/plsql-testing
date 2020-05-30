--------------------------------------------------------
--  DDL for Table GARANSEG_AUX
--------------------------------------------------------

  CREATE TABLE "AXIS"."GARANSEG_AUX" 
   (	"CGARANT" NUMBER(4,0), 
	"NRIESGO" NUMBER(6,0), 
	"NMOVIMI" NUMBER(4,0), 
	"SSEGURO" NUMBER(6,0), 
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
	"FEPREV" DATE, 
	"FPPREV" DATE, 
	"PERCRE" NUMBER(2,0), 
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
	"CDERREG" NUMBER(1,0), 
	"CCAMPANYA" NUMBER(3,0), 
	"NVERSIO" NUMBER(3,0), 
	"NMOVIMA" NUMBER(4,0), 
	"CAGEVEN" NUMBER(6,0), 
	"NFACTOR" NUMBER, 
	"NLINEA" NUMBER(3,0), 
	"CMOTMOV" NUMBER(3,0), 
	"FINIDER" DATE, 
	"FALTA" DATE, 
	"CFRANQ" NUMBER(6,0), 
	"NFRAVER" NUMBER(6,0), 
	"NGRPFRA" NUMBER(6,0), 
	"NGRPGARA" NUMBER(6,0), 
	"PDTOFRA" NUMBER(7,4), 
	"CTARMAN" NUMBER(2,0), 
	"NORDFRA" NUMBER(6,0), 
	"ITOTANU" NUMBER, 
	"PDTOTEC" NUMBER(6,2), 
	"PRECCOM" NUMBER(6,2), 
	"IDTOTEC" NUMBER, 
	"IRECCOM" NUMBER, 
	"ICAPRECOMEND" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."CGARANT" IS 'Código de garantía';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."NRIESGO" IS 'Número de riesgo';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."NMOVIMI" IS 'Número de movimiento';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."SSEGURO" IS 'Número consecutivo de seguro asignado automáticamente.';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."FINIEFE" IS 'fecha inicio de efecto';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."NORDEN" IS 'Número de orden.';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."CREVALI" IS 'Tipo de revalorizacion';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."CTARIFA" IS 'Código de tarifa';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."ICAPITAL" IS 'Importe garantía';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."PRECARG" IS 'Porcentaje de recargo';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."IEXTRAP" IS 'Factor Extraprima';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."IPRIANU" IS 'Importe prima anual';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."FFINEFE" IS 'fecha fin de efecto';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."CFORMUL" IS 'Fórmula utilizada en la tarifa';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."CTIPFRA" IS 'Tipo de franquicia';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."IFRANQU" IS 'Importe franquicia';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."IRECARG" IS 'Importe del recargo';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."IPRITAR" IS 'Importe tarifa';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."PDTOCOM" IS 'Porcentaje descuento comercial';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."IDTOCOM" IS 'Importe descuento comercial';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."PREVALI" IS 'Porcentaje de revalorizacion';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."IREVALI" IS 'Importe de revalorización';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."ITARIFA" IS 'Tarifa + extraprima';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."ITARREA" IS 'Tarifa reaseguro';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."FEPREV" IS 'Fecha de primera revisión de la aportación periódica';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."FPPREV" IS 'Fecha de próxima revisión de la aportación periódica';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."PERCRE" IS 'Periodicidad para la revisión del crecimiento de la aportación periódica';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."CREVALCAR" IS '0.- No revaloritza a la cartera, 1.- Si revaloriza a la cartera';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."CMATCH" IS 'Indicador de si se permite maching';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."TDESMAT" IS 'Descripción de la inversión';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."CREF" IS 'Tipo de Interés.VF=841';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."CINTREF" IS 'Código Interés Referenciado';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."PDIF" IS 'Diferencial de Intereses';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."NBNS" IS 'Indicador de si el seguro tiene Desviación Favorable por no siniestralidad';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."TMGARAN" IS 'Clave foránea de Codmortalidad_Par';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."CDERREG" IS 'Derechos de registro ,1 si ;0,null No';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."CCAMPANYA" IS 'Código de campaña (promoción) asignado a esta garantía';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."NVERSIO" IS 'Número de versión de la campaña';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."NMOVIMA" IS 'Número de movimiento de alta';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."NLINEA" IS 'Número de garantía relativa a póliza (ALN)';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."CMOTMOV" IS 'Código motivo de movimiento, solo informado en las garantías que se ha producido un cambio de producto';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."FINIDER" IS 'Fecha Inicio de Derechos.';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."FALTA" IS 'Fecha en que se dio de alta la Garantía';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."CFRANQ" IS 'Código de franquicia';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."NFRAVER" IS 'Número versión de franquicia';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."NGRPFRA" IS 'Código de grupo de franquicias';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."NGRPGARA" IS 'Código de grupo de garantias para franquicia';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."PDTOFRA" IS 'Porcentaje de descuento de la franquicia';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."CTARMAN" IS 'Tipo de tarifa manual';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."NORDFRA" IS 'Orden Franquicia (pk detfranquicias)';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."ITOTANU" IS 'Total prima anualizada';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."PDTOTEC" IS 'Porcentaje descuento técnico';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."PRECCOM" IS 'Porcentaje recargo comercial';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."IDTOTEC" IS 'Importe descuento técnico';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."IRECCOM" IS 'Importe recargo comercial';
   COMMENT ON COLUMN "AXIS"."GARANSEG_AUX"."ICAPRECOMEND" IS 'Capital recomendado';
   COMMENT ON TABLE "AXIS"."GARANSEG_AUX"  IS 'Tabla auxiliar de garanseg para tarifar';
  GRANT UPDATE ON "AXIS"."GARANSEG_AUX" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GARANSEG_AUX" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."GARANSEG_AUX" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."GARANSEG_AUX" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GARANSEG_AUX" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."GARANSEG_AUX" TO "PROGRAMADORESCSI";
