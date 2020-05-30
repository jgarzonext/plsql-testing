--------------------------------------------------------
--  DDL for Table MIG_HISTORICOSEGUROS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_HISTORICOSEGUROS" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"MIG_FK2" VARCHAR2(50 BYTE), 
	"MIG_FKDIR" VARCHAR2(50 BYTE), 
	"CAGENTE" NUMBER, 
	"NCERTIF" NUMBER, 
	"FEFECTO" DATE, 
	"CACTIVI" NUMBER(4,0), 
	"CCOBBAN" NUMBER(3,0), 
	"CTIPREA" NUMBER(1,0), 
	"CREAFAC" NUMBER(1,0), 
	"CTIPCOM" NUMBER(2,0), 
	"CSITUAC" NUMBER(2,0), 
	"FVENCIM" DATE, 
	"FEMISIO" DATE, 
	"FANULAC" DATE, 
	"IPRIANU" NUMBER(13,2), 
	"CIDIOMA" NUMBER(1,0), 
	"CFORPAG" NUMBER(2,0), 
	"CRETENI" NUMBER(1,0), 
	"CTIPCOA" NUMBER(1,0), 
	"SCIACOA" NUMBER(6,0), 
	"PPARCOA" NUMBER(5,2), 
	"NPOLCOA" VARCHAR2(12 BYTE), 
	"NSUPCOA" VARCHAR2(12 BYTE), 
	"NCUACOA" NUMBER(2,0), 
	"PDTOCOM" NUMBER(5,2), 
	"CEMPRES" NUMBER(2,0), 
	"SPRODUC" NUMBER(6,0), 
	"CCOMPANI" NUMBER(3,0), 
	"CTIPCOB" NUMBER(3,0), 
	"CREVALI" NUMBER(2,0), 
	"PREVALI" NUMBER(5,2), 
	"IREVALI" NUMBER(13,2), 
	"CTIPBAN" NUMBER(3,0), 
	"CBANCAR" VARCHAR2(50 BYTE), 
	"CASEGUR" NUMBER(2,0), 
	"NSUPLEM" NUMBER(4,0), 
	"CDOMICI" NUMBER(2,0), 
	"NPOLINI" VARCHAR2(50 BYTE), 
	"FCARANT" DATE, 
	"FCARPRO" DATE, 
	"CRECFRA" NUMBER(1,0), 
	"NDURCOB" NUMBER(2,0), 
	"FCARANU" DATE, 
	"NDURACI" NUMBER(3,0), 
	"NEDAMAR" NUMBER(2,0), 
	"FEFEPLAZO" DATE, 
	"FVENCPLAZO" DATE, 
	"MIG_FK3" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."MIG_PK" IS 'Clave �nica de MIG_HISTORICOSEGUROS';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."MIG_FK" IS 'Clave externa para el tomador (MIG_SEGUROS)';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."MIG_FK2" IS 'Clave externa para el movimiento (MIG_MOVSEGURO)';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."MIG_FKDIR" IS 'Clave externa para el tomador (MIG_PER_DIRECCIONES)';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."CAGENTE" IS 'C�digo de Agente (MIG_AGENTES)';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."NCERTIF" IS 'N�mero de certificado para p�lizas colectivas';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."FEFECTO" IS 'Fecha de efecto';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."CACTIVI" IS 'C�digo actividad del seguro. (Definici�n Producto) (Cero en este caso)';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."CCOBBAN" IS 'C�digo de cobrador bancario (Definici�n Instalaci�n)';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."CTIPREA" IS 'C�digo tipo de reaseguro. (VALOR FIJO:60)';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."CREAFAC" IS 'Indicador reaseguro facultativo. (VALOR FIJO:71)';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."CTIPCOM" IS 'C�digo tipo de comisi�n (VALOR FIJO:55)';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."CSITUAC" IS 'C�digo de situaci�n (VALOR FIJO:61)';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."FVENCIM" IS 'Fecha de Vencimiento';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."FEMISIO" IS 'Fecha de Emisi�n';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."FANULAC" IS 'Fecha de anulaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."IPRIANU" IS 'Importe primera anualidad';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."CIDIOMA" IS 'C�digo idioma  (9.1.1.2 Valor  IDIOMAS)';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."CFORPAG" IS 'C�digo forma de pago  (VALOR FIJO:17)';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."CRETENI" IS 'C�digo retenci�n p�liza (VALOR FIJO:66)';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."CTIPCOA" IS 'C�digo tipo de coaseguro (VALOR FIJO:59)';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."SCIACOA" IS 'C�digo de compa��a coaseguro (MIG_PK) COMPANIAS';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."PPARCOA" IS 'Porcentaje participaci�n coaseguro';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."NPOLCOA" IS 'N�mero p�liza compa��a coaseguro';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."NSUPCOA" IS 'N�mero de suplemento compa��a coaseguro';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."NCUACOA" IS 'N�mero de cuadro coaseguro';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."PDTOCOM" IS 'Porcentaje descuento comercial';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."CEMPRES" IS 'C�digo empresa (Definici�n Instalaci�n) � 24 en este caso';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."SPRODUC" IS 'Identificador �nico producto (Definici�n Productos)';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."CCOMPANI" IS 'C�digo Compa��a (Definici�n Instalaci�n)  � Nulo en este caso';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."CTIPCOB" IS 'Tipo cobro de la p�liza (VALOR FIJO:552)';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."CREVALI" IS 'C�digo Revalorizaci�n (VALOR FIJO:62)';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."PREVALI" IS 'Porcentaje de revalorizaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."IREVALI" IS 'Importe de revalorizaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."CTIPBAN" IS 'Tipo de cuenta (Ver Tabla TIPOS_CUENTA)';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."CBANCAR" IS 'CCC seg�n Consejo Superior Bancario';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."CASEGUR" IS 'C�digo de Asegurado (9.1.1.5 Valor  C�digo asegurado). Por defecto 0.';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."NSUPLEM" IS 'Contador del n�mero de suplementos';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."CDOMICI" IS 'Indica el n�mero de la direcci�n de MIG_PERSONAS (1 o 2)';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."NPOLINI" IS 'N�mero de p�liza inicial, antiguo del cliente';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."FCARANT" IS 'Fecha cartera anterior. Si NULL la calcula el proceso de migraci�n';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."FCARPRO" IS 'Fecha cartera pr�xima. Si NULL la calcula el proceso de migraci�n';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."CRECFRA" IS 'Se aplica o no el recargo de fraccionamiento (Si NULL, hereda valor de la definici�n del producto) 0-NO; 1-SI.';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."NDURCOB" IS 'Duraci�n del pago de primas';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."FCARANU" IS 'Fecha cartera anualidad. Si NULL la calcula el proceso de migraci�n';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."NDURACI" IS 'Si la duraci�n del producto est� definida como A�os o Meses, el n�mero de A�os o Meses de duraci�n de la p�liza.';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."NEDAMAR" IS 'Edad M�x. de renovaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."FEFEPLAZO" IS 'Fecha efecto plazo ejecuci�n';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."FVENCPLAZO" IS 'Fecha vencimiento plazo ejecuci�n';
   COMMENT ON COLUMN "AXIS"."MIG_HISTORICOSEGUROS"."MIG_FK3" IS 'Clave for�nea de MIG_BUREAU (N�mero BUREAU)';
  GRANT UPDATE ON "AXIS"."MIG_HISTORICOSEGUROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_HISTORICOSEGUROS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_HISTORICOSEGUROS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_HISTORICOSEGUROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_HISTORICOSEGUROS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_HISTORICOSEGUROS" TO "PROGRAMADORESCSI";