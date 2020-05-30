--------------------------------------------------------
--  DDL for Table MIG_SEGUROS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_SEGUROS" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"MIG_FKDIR" VARCHAR2(50 BYTE), 
	"CAGENTE" NUMBER, 
	"NPOLIZA" NUMBER, 
	"NCERTIF" NUMBER, 
	"FEFECTO" DATE, 
	"CREAFAC" NUMBER(1,0), 
	"CACTIVI" NUMBER(4,0), 
	"CCOBBAN" NUMBER(3,0), 
	"CTIPCOA" NUMBER(1,0), 
	"CTIPREA" NUMBER(1,0), 
	"CTIPCOM" NUMBER(2,0), 
	"FVENCIM" DATE, 
	"FEMISIO" DATE, 
	"FANULAC" DATE, 
	"FCANCEL" DATE, 
	"CSITUAC" NUMBER(2,0), 
	"IPRIANU" NUMBER, 
	"CIDIOMA" NUMBER(2,0), 
	"CFORPAG" NUMBER(2,0), 
	"CRETENI" NUMBER(2,0), 
	"SCIACOA" NUMBER(6,0), 
	"PPARCOA" NUMBER(5,2), 
	"NPOLCOA" VARCHAR2(12 BYTE), 
	"NSUPCOA" VARCHAR2(12 BYTE), 
	"PDTOCOM" NUMBER(5,2), 
	"NCUACOA" NUMBER(2,0), 
	"CEMPRES" NUMBER(2,0), 
	"SPRODUC" NUMBER(6,0), 
	"CCOMPANI" NUMBER(3,0), 
	"CTIPCOB" NUMBER(3,0), 
	"CREVALI" NUMBER(2,0), 
	"PREVALI" NUMBER(5,2), 
	"IREVALI" NUMBER, 
	"CTIPBAN" NUMBER(3,0), 
	"CBANCAR" VARCHAR2(50 BYTE), 
	"CASEGUR" NUMBER(2,0), 
	"NSUPLEM" NUMBER(4,0), 
	"SSEGURO" NUMBER, 
	"SPERSON" NUMBER(10,0), 
	"CDOMICI" NUMBER, 
	"NPOLINI" VARCHAR2(15 BYTE), 
	"CTIPBAN2" NUMBER(1,0), 
	"CBANCOB" VARCHAR2(50 BYTE), 
	"FCARANT" DATE, 
	"FCARPRO" DATE, 
	"CRECFRA" NUMBER(1,0), 
	"NDURCOB" NUMBER(2,0), 
	"FCARANU" DATE, 
	"CTIPRETR" NUMBER(2,0), 
	"CINDREVFRAN" NUMBER(1,0), 
	"PRECARG" NUMBER(6,2), 
	"PDTOTEC" NUMBER(6,2), 
	"PRECCOM" NUMBER(6,2), 
	"FRENOVA" DATE, 
	"CPOLCIA" VARCHAR2(50 BYTE), 
	"NEDAMAR" NUMBER(2,0), 
	"PROCESO" NUMBER, 
	"NDURACI" NUMBER(5,2), 
	"MIG_FK2" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."NCARGA" IS 'N¿mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CESTMIG" IS 'Estado del registro';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."MIG_PK" IS 'Clave ¿nica de MIG_SEGUROS';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."MIG_FK" IS 'Clave externa para el tomador (MIG_DIRECCIONES) (Para manejo del NIT Duplicado)';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CAGENTE" IS 'C¿digo de Agente';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."NPOLIZA" IS 'N¿mero de P¿liza, si valor=0, lo calcula el proceso de migraci¿n';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."NCERTIF" IS 'N¿mero de certificado para p¿lizas colectivas';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."FEFECTO" IS 'Fecha de efecto';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CREAFAC" IS 'Indicador reaseguro facultativo';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CACTIVI" IS 'C¿digo actividad del seguro';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CCOBBAN" IS 'C¿digo de cobrador bancario';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CTIPCOA" IS 'C¿digo tipo de coaseguro';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CTIPREA" IS 'C¿digo tipo de reaseguro';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CTIPCOM" IS 'C¿digo tipo de comisi¿n';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."FVENCIM" IS 'Fecha de Vencimiento';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."FEMISIO" IS 'Fecha de Emisi¿n';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."FANULAC" IS 'Fecha de anulaci¿n';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."FCANCEL" IS 'Fecha de cancelaci¿n';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CSITUAC" IS 'C¿digo de situaci¿n VF:61';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."IPRIANU" IS 'Importe primera anualidad';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CIDIOMA" IS 'C¿digo idioma';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CFORPAG" IS 'C¿digo forma de pago';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CRETENI" IS 'Propuesta retenida o no VF:66';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."SCIACOA" IS 'C¿digo de compa¿ia coaseguro (SPERSON)';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."PPARCOA" IS 'Porcentaje participaci¿n coaseguro';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."NPOLCOA" IS 'N¿mero p¿liza compa¿ia coaseguro';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."NSUPCOA" IS 'N¿mero de suplemento compa¿ia coaseguro';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."PDTOCOM" IS 'Porcentaje descuento comercial';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."NCUACOA" IS 'N¿mero de cuadro coaseguro';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CEMPRES" IS 'C¿digo empresa';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."SPRODUC" IS 'Identificador ¿nico producto';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CCOMPANI" IS 'C¿digo Compa¿ia';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CTIPCOB" IS 'Tipo cobro de la p¿liza VF 552';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CREVALI" IS 'C¿digo Revalorizaci¿n VF 62';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."PREVALI" IS 'Porcentaje de revalorizacion';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."IREVALI" IS 'Importe de revalorizacion';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CTIPBAN" IS 'Tipo de cuenta';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CBANCAR" IS 'CCC seg¿n Consejo Superior Bancario';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CASEGUR" IS 'C¿digo de Asegurado';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."NSUPLEM" IS 'Contador del n¿mero de suplementos';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."SSEGURO" IS 'N¿mero consecutivo de seguro asignado 0, lo calcula el proceso de migraci¿n';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."SPERSON" IS 'Identificador ¿nico de persona asignado 0, lo calcula el proceso de migraci¿n';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CDOMICI" IS 'Indica el numero de la direcci¿n de MIG_PERSONAS (1 o 2)';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."NPOLINI" IS 'N¿mero de p¿liza inicial, antiguo del cliente';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CTIPBAN2" IS 'Tipo cuenta cargo (APRA)';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CBANCOB" IS 'Cuenta cargo (APRA)';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."FCARANT" IS 'Fecha cartera anterior. Si NULL la calcula el proceso de migraci¿n';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."FCARPRO" IS 'Fecha cartera pr¿xima. Si NULL la calcula el proceso de migraci¿n';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CRECFRA" IS 'Se aplica o no el recargo de fraccionamiento (Si NULL, hereda valor de la definici¿n del producto)';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."NDURCOB" IS 'Duraci¿n del pago de primas';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."FCARANU" IS 'Fecha cartera anualidad';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CTIPRETR" IS 'Tipo de retribuci¿n';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CINDREVFRAN" IS 'Revalorizaci¿n franquicia';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."PRECARG" IS 'Recargo t¿cnico';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."PDTOTEC" IS 'Descuento t¿cnico';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."PRECCOM" IS 'Recargo comercial';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."FRENOVA" IS 'Fecha renovaci¿n';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."CPOLCIA" IS 'Identificador de p¿liza en compa¿ia/agente/partner';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."NEDAMAR" IS 'Edad M¿x. de renovaci¿n';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."PROCESO" IS 'Id.Proceso que ha cargado';
   COMMENT ON COLUMN "AXIS"."MIG_SEGUROS"."NDURACI" IS 'Valor duraci¿n para meses o a¿os';
   COMMENT ON TABLE "AXIS"."MIG_SEGUROS"  IS 'Tabla Intermedia migraci¿n Seguros';
  GRANT UPDATE ON "AXIS"."MIG_SEGUROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_SEGUROS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_SEGUROS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_SEGUROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_SEGUROS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_SEGUROS" TO "PROGRAMADORESCSI";
