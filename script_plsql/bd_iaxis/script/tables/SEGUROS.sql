--------------------------------------------------------
--  DDL for Table SEGUROS
--------------------------------------------------------

  CREATE TABLE "AXIS"."SEGUROS" 
   (	"SSEGURO" NUMBER, 
	"CMODALI" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CASEGUR" NUMBER(2,0), 
	"CAGENTE" NUMBER, 
	"CRAMO" NUMBER(8,0), 
	"NPOLIZA" NUMBER, 
	"NCERTIF" NUMBER, 
	"NSUPLEM" NUMBER(4,0), 
	"FEFECTO" DATE, 
	"CREAFAC" NUMBER(1,0), 
	"CTARMAN" NUMBER(1,0), 
	"COBJASE" NUMBER(2,0), 
	"CTIPREB" NUMBER(1,0), 
	"CACTIVI" NUMBER(4,0), 
	"CCOBBAN" NUMBER(3,0), 
	"CTIPCOA" NUMBER(1,0), 
	"CTIPREA" NUMBER(1,0), 
	"CRECMAN" NUMBER(1,0), 
	"CRECCOB" NUMBER(1,0), 
	"CTIPCOM" NUMBER(2,0), 
	"FVENCIM" DATE, 
	"FEMISIO" DATE, 
	"FANULAC" DATE, 
	"FCANCEL" DATE, 
	"CSITUAC" NUMBER(2,0), 
	"CBANCAR" VARCHAR2(50 BYTE), 
	"CTIPCOL" NUMBER(1,0), 
	"FCARANT" DATE, 
	"FCARPRO" DATE, 
	"FCARANU" DATE, 
	"CDURACI" NUMBER(1,0), 
	"NDURACI" NUMBER(5,2), 
	"NANUALI" NUMBER(2,0), 
	"IPRIANU" NUMBER, 
	"CIDIOMA" NUMBER(2,0), 
	"NFRACCI" NUMBER(2,0), 
	"CFORPAG" NUMBER(2,0), 
	"PDTOORD" NUMBER(5,2), 
	"NRENOVA" NUMBER(4,0), 
	"CRECFRA" NUMBER(1,0), 
	"TASEGUR" VARCHAR2(300 BYTE), 
	"CRETENI" NUMBER(2,0), 
	"NDURCOB" NUMBER(2,0), 
	"SCIACOA" NUMBER(6,0), 
	"PPARCOA" NUMBER(5,2), 
	"NPOLCOA" VARCHAR2(12 BYTE), 
	"NSUPCOA" VARCHAR2(12 BYTE), 
	"TNATRIE" VARCHAR2(300 BYTE), 
	"PDTOCOM" NUMBER(5,2), 
	"PREVALI" NUMBER(5,2), 
	"IREVALI" NUMBER, 
	"NCUACOA" NUMBER, 
	"NEDAMED" NUMBER(2,0), 
	"CREVALI" NUMBER(2,0), 
	"CEMPRES" NUMBER(2,0), 
	"CAGRPRO" NUMBER(2,0), 
	"NSOLICI" NUMBER(8,0), 
	"FIMPSOL" DATE, 
	"SPRODUC" NUMBER(6,0), 
	"CCOMPANI" NUMBER(3,0), 
	"INTPRES" NUMBER(9,6), 
	"NMESCOB" NUMBER(2,0), 
	"CNOTIBAJA" NUMBER(3,0), 
	"CCARTERA" NUMBER(1,0), 
	"NPARBEN" NUMBER(1,0), 
	"NBNS" NUMBER(1,0), 
	"CTRAMO" NUMBER(6,0), 
	"CINDEXT" NUMBER(1,0), 
	"PDISPRI" NUMBER(5,2), 
	"IDISPRI" NUMBER(5,2), 
	"CIMPASE" NUMBER(1,0), 
	"CAGENCORR" VARCHAR2(30 BYTE), 
	"NPAGINA" NUMBER(2,0), 
	"NLINEA" NUMBER(2,0), 
	"CTIPBAN" NUMBER(3,0), 
	"CTIPCOB" NUMBER(3,0), 
	"SPRODTAR" NUMBER(6,0), 
	"CSUBAGE" NUMBER, 
	"CPOLCIA" VARCHAR2(50 BYTE), 
	"CPROMOTOR" NUMBER(10,0), 
	"CMONEDA" NUMBER(3,0), 
	"NCUOTAR" NUMBER(3,0), 
	"CTIPRETR" NUMBER(2,0), 
	"CINDREVFRAN" NUMBER(1,0), 
	"PRECARG" NUMBER(6,2), 
	"PDTOTEC" NUMBER(6,2), 
	"PRECCOM" NUMBER(6,2), 
	"FRENOVA" DATE, 
	"CBLOQUEOCOL" NUMBER(1,0), 
	"NEDAMAR" NUMBER(2,0), 
	"CTIPOASIGNUM" NUMBER(1,0), 
	"NPOLIZAMANUAL" NUMBER(8,0), 
	"NPREIMPRESO" NUMBER(8,0), 
	"PROCESOCARGA" NUMBER, 
	"FEFEPLAZO" DATE, 
	"FVENCPLAZO" DATE, 
	"SFBUREAU" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS"  ENABLE ROW MOVEMENT ;

   COMMENT ON COLUMN "AXIS"."SEGUROS"."SSEGURO" IS 'N�mero consecutivo de seguro asignado autom�ticamente.';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CMODALI" IS 'C�digo modalidad';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CCOLECT" IS 'C�digo de colectividad';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CTIPSEG" IS 'C�digo tipo de seguro';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CASEGUR" IS 'C�digo de asegurado';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CAGENTE" IS 'C�digo de agente';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CRAMO" IS 'C�digo ramo';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."NPOLIZA" IS 'N�mero de p�liza.';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."NCERTIF" IS 'N�mero de certificado para p�lizas colectivas';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."NSUPLEM" IS 'Contador del n�mero de suplementos';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."FEFECTO" IS 'Fecha de efecto';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CREAFAC" IS 'C�digo de si hay reaseguro facultativo o no.';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CTARMAN" IS 'La tarificaci�n puede ser manual';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."COBJASE" IS 'C�digo de objeto asegurado';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CTIPREB" IS 'El recibo es por tomador o asegurado';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CACTIVI" IS 'C�digo actividad del seguro';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CCOBBAN" IS 'C�digo de cobrador bancario';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CTIPCOA" IS 'C�digo tipo de coaseguro';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CTIPREA" IS 'C�digo tipo de reaseguro';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CRECMAN" IS 'Primer recibo manual';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CRECCOB" IS 'Situaci�n primer recibo';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CTIPCOM" IS 'C�digo tipo de comisi�n';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."FVENCIM" IS 'Fecha de vencimiento';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."FEMISIO" IS 'Fecha de emisi�n';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."FANULAC" IS 'Fecha de anulaci�n';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."FCANCEL" IS 'Fecha de cancelaci�n';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CSITUAC" IS 'C�digo de situaci�n. Valor fijo 61';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CBANCAR" IS 'CCC seg�n Consejo Superior Bancario';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CTIPCOL" IS 'Si los riesgos tienen o no las mismas garant�as';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."FCARANT" IS 'Fecha cartera anterior';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."FCARPRO" IS 'Fecha cartera pr�xima';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."FCARANU" IS 'Fecha cartera anualidad';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CDURACI" IS 'C�digo duraci�n';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."NDURACI" IS 'Valor duraci�n para meses o a�os';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."NANUALI" IS 'N�mero de anualidades';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."IPRIANU" IS 'Importe primera anualidad';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CIDIOMA" IS 'C�digo idioma';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."NFRACCI" IS 'Contador del n�mero de pagos fraccionados emitidos en la anualida';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CFORPAG" IS 'C�digo forma de pago';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."PDTOORD" IS 'Porcentaje descuento ventanilla';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."NRENOVA" IS 'D�a y mes renovaci�n';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CRECFRA" IS 'Se aplica o no el recargo de fraccionamiento';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."TASEGUR" IS 'Nombre de asegurado';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CRETENI" IS 'Propuesta retenida o no. Valor fijo 66';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."NDURCOB" IS 'Duraci�n del pago de primas';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."SCIACOA" IS 'C�digo de compa��a coaseguro (SPERSON)';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."PPARCOA" IS 'Porcentaje participaci�n coaseguro';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."NPOLCOA" IS 'N�mero p�liza compa�ia coaseguro';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."NSUPCOA" IS 'N�mero de suplemento compa�ia coaseguro';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."FIMPSOL" IS 'Fecha impresi�n certificado provisional (autos)';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CCOMPANI" IS 'Compa��a';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CCARTERA" IS '1.- Si csituac = 5 (prop.alta) permite pasar cartera  NULL.- si csituac = 5 No pasa cartera';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."NPARBEN" IS 'Indicador de si el seguro tiene participaci�n en Beneficios';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."NBNS" IS 'Indicador de si el seguro tiene Desviaci�n Favorable por no siniestralidad';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CTRAMO" IS 'C�digo Tramo';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CINDEXT" IS 'Indicador de si el seguro es de Externalizaci�n de Compromisos';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."PDISPRI" IS 'Porcentaje de la prima que paga el tomador (100-PDISPRI, lo paga el asegurado)';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."IDISPRI" IS 'Importe fijo a pagar por el asegurado';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CIMPASE" IS 'Indicador de si es imputable al asegurado la prima o el importe';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CAGENCORR" IS 'C�digo del agente en la compa��a';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."NPAGINA" IS 'Ultima pagina impresa en la libreta';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."NLINEA" IS 'Ultima linea impresa en la libreta';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CTIPCOB" IS 'Tipo de cobro de la p�liza (VF 552)';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."SPRODTAR" IS 'C�digo de identificaci�n del producto que se utilizar� para tarifar';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CSUBAGE" IS 'C�digo de Subagente';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CPOLCIA" IS 'Poliza Compa�ia';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CPROMOTOR" IS 'Promotor o representate de ventas de la p�liza';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CMONEDA" IS 'Moneda a nivel de p�liza, en la que se calcular�n los contravalores de los recibos. Por defecto ser� la de la empresa.';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."NCUOTAR" IS 'N�mero cuotas de tarjeta';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CTIPRETR" IS 'Tipo de retribuci�n';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CINDREVFRAN" IS 'Revalorizaci�n franquicia';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."PRECARG" IS 'Recargo t�cnico';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."PDTOTEC" IS 'Descuento t�cnico';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."PRECCOM" IS 'Recargo comercial';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."FRENOVA" IS 'Fecha renovaci�n';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CBLOQUEOCOL" IS 'Indica si una p�liza est� bloqueada (v.f.1111)';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."NEDAMAR" IS 'Edad M�x. de renovaci�n';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."CTIPOASIGNUM" IS 'Tipo asignaci�n';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."NPOLIZAMANUAL" IS 'N�mero de p�liza manual';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."NPREIMPRESO" IS 'N�mero de pre-impreso';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."PROCESOCARGA" IS 'N�mero de proceso carga/mig que gener� la p�liza.(Nota: 0 tb indica carga).';
   COMMENT ON COLUMN "AXIS"."SEGUROS"."SFBUREAU" IS 'Numero Ficha Bureau';
   COMMENT ON TABLE "AXIS"."SEGUROS"  IS 'Fecha �ltima cartera para ASSP';
  GRANT UPDATE ON "AXIS"."SEGUROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SEGUROS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SEGUROS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SEGUROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SEGUROS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SEGUROS" TO "PROGRAMADORESCSI";
