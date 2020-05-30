--------------------------------------------------------
--  DDL for Table GARANSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."GARANSEG" 
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
	"NMOVIMA" NUMBER(4,0) DEFAULT 1, 
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
	"ICAPRECOMEND" NUMBER, 
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
  TABLESPACE "AXIS"  ENABLE ROW MOVEMENT ;

   COMMENT ON COLUMN "AXIS"."GARANSEG"."CGARANT" IS 'Código de garantía';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."NRIESGO" IS 'Número de riesgo';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."NMOVIMI" IS 'Número de movimiento';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."SSEGURO" IS 'Número consecutivo de seguro asignado automáticamente.';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."FINIEFE" IS 'fecha inicio de efecto';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."NORDEN" IS 'Número de orden.';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."CREVALI" IS 'Tipo de revalorizacion';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."CTARIFA" IS 'Código de tarifa';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."ICAPITAL" IS 'Importe garantía';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."PRECARG" IS 'Porcentaje de recargo';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."IEXTRAP" IS 'Factor Extraprima';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."IPRIANU" IS 'Importe prima anual';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."FFINEFE" IS 'fecha fin de efecto';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."CFORMUL" IS 'Fórmula utilizada en la tarifa';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."CTIPFRA" IS 'Tipo de franquicia';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."IFRANQU" IS 'Importe franquicia';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."IRECARG" IS 'Importe del recargo';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."IPRITAR" IS 'Importe tarifa';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."PDTOCOM" IS 'Porcentaje descuento comercial';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."IDTOCOM" IS 'Importe descuento comercial';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."PREVALI" IS 'Porcentaje de revalorizacion';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."IREVALI" IS 'Importe de revalorización';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."ITARIFA" IS 'Tarifa + extraprima';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."ITARREA" IS 'Tarifa reaseguro';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."FEPREV" IS 'Fecha de primera revisión de la aportación periódica';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."FPPREV" IS 'Fecha de próxima revisión de la aportación periódica';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."PERCRE" IS 'Periodicidad para la revisión del crecimiento de la aportación periódica';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."CREVALCAR" IS '0.- No revaloritza a la cartera, 1.- Si revaloriza a la cartera';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."CMATCH" IS 'Indicador de si se permite maching';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."TDESMAT" IS 'Descripción de la inversión';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."CREF" IS 'Tipo de Interés.VF=841';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."CINTREF" IS 'Código Interés Referenciado';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."PDIF" IS 'Diferencial de Intereses';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."NBNS" IS 'Indicador de si el seguro tiene Desviación Favorable por no siniestralidad';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."TMGARAN" IS 'Clave foránea de Codmortalidad_Par';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."CDERREG" IS 'Derechos de registro ,1 si ;0,null No';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."CCAMPANYA" IS 'Código de campaña (promoción) asignado a esta garantía';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."NVERSIO" IS 'Número de versión de la campaña';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."NMOVIMA" IS 'Número de movimiento de alta';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."NLINEA" IS 'Número de garantía relativa a póliza (ALN)';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."CMOTMOV" IS 'Código motivo de movimiento, solo informado en las garantías que se ha producido un cambio de producto';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."FINIDER" IS 'Fecha Inicio de Derechos.';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."FALTA" IS 'Fecha en que se dio de alta la Garantía';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."CFRANQ" IS 'Código de franquicia';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."NFRAVER" IS 'Número versión de franquicia';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."NGRPFRA" IS 'Código de grupo de franquicias';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."NGRPGARA" IS 'Código de grupo de garantias para franquicia';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."PDTOFRA" IS 'Porcentaje de descuento de la franquicia';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."CTARMAN" IS 'Tipo de tarifa manual';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."NORDFRA" IS 'Orden Franquicia (pk detfranquicias)';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."ITOTANU" IS 'Total prima anualizada';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."PDTOTEC" IS 'Porcentaje descuento técnico';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."PRECCOM" IS 'Porcentaje recargo comercial';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."IDTOTEC" IS 'Importe descuento técnico';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."IRECCOM" IS 'Importe recargo comercial';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."ICAPRECOMEND" IS 'Capital recomendado';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."IPRICOM" IS 'Importe sobre el que se ha de calcular la comisión';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."FINIVIG" IS 'Fecha inicio vigencia cobertura';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."FFINVIG" IS 'Fecha fin vigencia cobertura';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."CCOBPRIMA" IS 'Cobra Prima';
   COMMENT ON COLUMN "AXIS"."GARANSEG"."IPRIDEV" IS 'Prima Devengada';
  GRANT UPDATE ON "AXIS"."GARANSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GARANSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."GARANSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."GARANSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GARANSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."GARANSEG" TO "PROGRAMADORESCSI";
