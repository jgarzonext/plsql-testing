--------------------------------------------------------
--  DDL for Table HIS_GARANPRO
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_GARANPRO" 
   (	"CMODALI" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"CRAMO" NUMBER(8,0), 
	"CGARANT" NUMBER(4,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CTARIFA" NUMBER(5,0), 
	"NORDEN" NUMBER(3,0), 
	"CTIPGAR" NUMBER(1,0), 
	"CTIPCAP" NUMBER(1,0), 
	"CTIPTAR" NUMBER(1,0), 
	"CGARDEP" NUMBER(4,0), 
	"PCAPDEP" NUMBER(5,2), 
	"CCAPMAX" NUMBER(1,0), 
	"ICAPMAX" NUMBER, 
	"ICAPMIN" NUMBER, 
	"NEDAMIC" NUMBER(2,0), 
	"NEDAMAC" NUMBER(2,0), 
	"NEDAMAR" NUMBER(2,0), 
	"CFORMUL" NUMBER(6,0), 
	"CTIPFRA" NUMBER(1,0), 
	"IFRANQU" NUMBER, 
	"CGARANU" NUMBER(1,0), 
	"CIMPCON" NUMBER(1,0), 
	"CIMPDGS" NUMBER(1,0), 
	"CIMPIPS" NUMBER(1,0), 
	"CIMPCES" NUMBER(1,0), 
	"CIMPARB" NUMBER(1,0), 
	"CDTOCOM" NUMBER(1,0), 
	"CREVALI" NUMBER(2,0), 
	"CEXTRAP" NUMBER(1,0), 
	"CRECARG" NUMBER(1,0), 
	"CMODTAR" NUMBER(1,0), 
	"PREVALI" NUMBER(8,5), 
	"IREVALI" NUMBER, 
	"CMODREV" NUMBER(1,0), 
	"CIMPFNG" NUMBER(1,0), 
	"CACTIVI" NUMBER(4,0), 
	"CTARJET" NUMBER(1,0), 
	"CTIPCAL" NUMBER(2,0), 
	"CIMPRES" NUMBER(2,0), 
	"CPASMAX" NUMBER(1,0), 
	"CDERREG" NUMBER(1,0), 
	"CREASEG" NUMBER(1,0), 
	"CEXCLUS" NUMBER(1,0), 
	"CRENOVA" NUMBER(1,0), 
	"CTECNIC" NUMBER(1,0), 
	"CBASICA" NUMBER(1,0), 
	"CPROVIS" NUMBER(2,0), 
	"CTABLA" NUMBER(2,0), 
	"PRECSEG" NUMBER(5,2), 
	"CRAMDGS" NUMBER(2,0), 
	"CDTOINT" NUMBER(1,0), 
	"ICAPREV" NUMBER, 
	"CIEDMAC" NUMBER(1,0) DEFAULT 0, 
	"CIEDMIC" NUMBER(1,0) DEFAULT 0, 
	"CIEDMAR" NUMBER(1,0) DEFAULT 0, 
	"IPRIMAX" NUMBER, 
	"IPRIMIN" NUMBER, 
	"CIEMA2C" NUMBER(1,0), 
	"CIEMI2C" NUMBER(1,0), 
	"CIEMA2R" NUMBER(1,0), 
	"NEDMA2C" NUMBER(2,0), 
	"NEDMI2C" NUMBER(2,0), 
	"NEDMA2R" NUMBER(2,0), 
	"SPRODUC" NUMBER(6,0), 
	"COBJASEG" VARCHAR2(2 BYTE), 
	"CSUBOBJASEG" VARCHAR2(2 BYTE), 
	"CGENRIE" NUMBER(2,0), 
	"CCLACAP" NUMBER(8,0), 
	"CTARMAN" NUMBER(1,0), 
	"COFERSN" NUMBER(1,0) DEFAULT 1, 
	"NPARBEN" NUMBER(1,0), 
	"NBNS" NUMBER(1,0), 
	"CRECFRA" NUMBER(1,0), 
	"CCONTRA" VARCHAR2(50 BYTE), 
	"CMODINT" NUMBER(1,0), 
	"CPARDEP" VARCHAR2(20 BYTE), 
	"CVALPAR" NUMBER, 
	"CCAPMIN" NUMBER(1,0), 
	"CDETALLE" NUMBER(1,0), 
	"CMONCAP" NUMBER(3,0), 
	"CGARPADRE" NUMBER(4,0), 
	"CVISNIV" NUMBER(3,0), 
	"CIEDMRV" NUMBER(1,0) DEFAULT 0, 
	"NEDAMRV" NUMBER(2,0), 
	"CCLAMIN" NUMBER(8,0), 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"ACCION" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CMODALI" IS 'Código modalidad';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CCOLECT" IS 'Código de colectividad';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CRAMO" IS 'Código ramo';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CGARANT" IS 'Código de garantía';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CTIPSEG" IS 'Código tipo de seguro';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CTARIFA" IS 'Código de tarifa';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."NORDEN" IS 'Número de orden';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CTIPGAR" IS 'Tipo de garantia.';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CTIPCAP" IS 'Tipo de capital.';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CTIPTAR" IS 'Tipo de tarifa (lista de valores)';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CGARDEP" IS 'Código garantía de la que depende.';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."PCAPDEP" IS 'Porcentaje del capital de la garantía';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CCAPMAX" IS 'Capital contratación.';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."ICAPMAX" IS 'Importe máximo de contratación.';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."ICAPMIN" IS 'Importe mínimo de contratación';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."NEDAMIC" IS 'Edad mínima de contratación';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."NEDAMAC" IS 'Edad máxima de contratación';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."NEDAMAR" IS 'Edad máxima de renovación';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CFORMUL" IS 'Código de fórmula para tarifar la garantia';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CTIPFRA" IS 'Tipo de franquicia';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."IFRANQU" IS 'Importe franquicia';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CGARANU" IS 'El siniestro anula el riesgo';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CIMPCON" IS 'Se aplica el consorcio';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CIMPDGS" IS 'Se aplica la DGS';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CIMPIPS" IS 'Se aplica el IPS';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CIMPCES" IS 'Calcula recargo consorcio';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CIMPARB" IS 'Se calcula arbitrios';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CDTOCOM" IS 'Admite descuento comercial';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CREVALI" IS 'Tipo de revalorización';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CEXTRAP" IS 'Se puede modificar la extraprima';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CRECARG" IS 'Se puede añadir un recargo';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CMODTAR" IS 'Se puede enseñar y modificar la tarifa';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."PREVALI" IS 'Porcentaje de revalorización';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."IREVALI" IS 'Importe de revalorización';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CMODREV" IS 'Se puede modificar la revalorización';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CTARJET" IS 'Si tiene tarjeta o no';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CIMPRES" IS 'Impresion capital. En su lugar se imprime el valor fijo 126';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CPASMAX" IS 'Permitir reservas de siniestro mayores que el capital asegurado 1=SÃ­';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CPROVIS" IS 'Indica si se calculan provisiones no técnicas';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CIEDMAC" IS 'Ind. si se valida la 0-edad actuarial 1-edad real. Edad Max. Ctnr.';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CIEDMIC" IS 'Ind. si se valida la 0-edad actuarial 1-edad real. Edad Min. Ctnr.';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CIEDMAR" IS 'Ind. si se valida la 0-edad actuarial 1-edad real. Edad Max. Renov.';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CIEMA2C" IS 'Ind. si se valida la 0-edad actuarial 1-edad real. Cuando se informa Edad Max. Ctnr. 2ºAsegurado';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CIEMI2C" IS 'Ind. si se valida la 0-edad actuarial 1-edad real. Cuando se informa Edad Min. Ctnr. 2ºAsegurado';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CIEMA2R" IS 'Ind. si se valida la 0-edad actuarial 1-edad real. Cuando se informa Edad Max. Renov. 2ºAsegurado';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."NEDMA2C" IS 'Edad Max. Ctnr. 2ºAsegurado';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."NEDMI2C" IS 'Edad Min. Ctnr. 2ºAsegurado';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."NEDMA2R" IS 'Edad Max. Renov. 2ºAsegurado';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."SPRODUC" IS 'Numerador seqüencial de productes';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CCLACAP" IS 'Código de la fórmula SGT para el cálculo del capital máximo';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CTARMAN" IS 'La tarificación puede ser manual';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."NPARBEN" IS 'Indicador de si el producto permite particpación en beneficios';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CCAPMIN" IS '0.- Capital mínimo fijo, 1.- Capital mínimo según forma pago';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CDETALLE" IS 'Nos informa si tiene desglose la garantia o no  ';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CMONCAP" IS 'Moneda en que están expresados el capital de la garantía y los capitales mínimo y máximo';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CGARPADRE" IS 'Código de la garantía padre. A partir de este campo sabemos si es una garantía, sub-garantía o sub-subgarantía. Se permite tres niveles.';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CVISNIV" IS 'Nivel de visión de la garantía (v.f.1080). Se permiten tres niveles de visión. Independiente del nivel de la garantía (cgarpadre), puede ser una sub-subgarantía y ser del primer nivel de visión.';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CIEDMRV" IS 'Ind. si se valida la 0-edad actuarial 1-edad real. Edad Max. Revalorización';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."NEDAMRV" IS 'Edad máxima de Revalorización';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."CUSUMOD" IS 'Usuario de modificacion del registro';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."FMODIFI" IS 'Fecha de modificacion del registro';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO"."ACCION" IS 'Acción realizada';
   COMMENT ON TABLE "AXIS"."HIS_GARANPRO"  IS 'Historico de garantias por producto';
  GRANT UPDATE ON "AXIS"."HIS_GARANPRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_GARANPRO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_GARANPRO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_GARANPRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_GARANPRO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_GARANPRO" TO "PROGRAMADORESCSI";
