--------------------------------------------------------
--  DDL for Table ANUSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."ANUSEG" 
   (	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"FMOVIMI" DATE, 
	"CASEGUR" NUMBER(2,0), 
	"CAGENTE" NUMBER, 
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
	"NDURACI" NUMBER(3,0), 
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
	"NPOLCOA" VARCHAR2(10 BYTE), 
	"NSUPCOA" VARCHAR2(6 BYTE), 
	"TNATRIE" VARCHAR2(300 BYTE), 
	"PDTOCOM" NUMBER(5,2), 
	"PREVALI" NUMBER(5,2), 
	"IREVALI" NUMBER, 
	"NCUACOA" NUMBER(2,0), 
	"NEDAMED" NUMBER(2,0), 
	"CREVALI" NUMBER(2,0), 
	"CEMPRES" NUMBER(2,0), 
	"CAGRPRO" NUMBER(2,0), 
	"NSOLICI" NUMBER(8,0), 
	"F1PAREN" DATE, 
	"FCARULT" DATE, 
	"TTEXTO" VARCHAR2(50 BYTE), 
	"CCOMPANI" NUMBER(3,0), 
	"CBENREV" VARCHAR2(1 BYTE) DEFAULT 'S', 
	"CDOMICI" NUMBER DEFAULT 1, 
	"NDURPER" NUMBER(6,0), 
	"FREVISIO" DATE, 
	"CGASGES" NUMBER(3,0), 
	"CGASRED" NUMBER(3,0), 
	"CMODINV" NUMBER(4,0), 
	"CTIPBAN" NUMBER(3,0), 
	"CTIPCOB" NUMBER(3,0), 
	"FREVANT" DATE, 
	"SPRODTAR" NUMBER(6,0), 
	"NCUOTAR" NUMBER(3,0), 
	"CTIPRETR" NUMBER(2,0), 
	"CINDREVFRAN" NUMBER(1,0), 
	"PRECARG" NUMBER(6,2), 
	"PDTOTEC" NUMBER(6,2), 
	"PRECCOM" NUMBER(6,2), 
	"FRENOVA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ANUSEG"."CCOMPANI" IS 'Compa��a';
   COMMENT ON COLUMN "AXIS"."ANUSEG"."CBENREV" IS 'Valor S/N que indica si los beneficiaros son revocables o no';
   COMMENT ON COLUMN "AXIS"."ANUSEG"."CDOMICI" IS 'Domicilio de la persona asignado al seguro';
   COMMENT ON COLUMN "AXIS"."ANUSEG"."NDURPER" IS 'Duraci�n periodo inter�s garantizado';
   COMMENT ON COLUMN "AXIS"."ANUSEG"."FREVISIO" IS 'Fecha de revisi�n/renovaci�n duraci�n per�odo inter�s garantizado';
   COMMENT ON COLUMN "AXIS"."ANUSEG"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
   COMMENT ON COLUMN "AXIS"."ANUSEG"."CTIPCOB" IS 'Tipo de cobro de la p�liza (VF 552)';
   COMMENT ON COLUMN "AXIS"."ANUSEG"."FREVANT" IS 'Fecha revisi�n anterior';
   COMMENT ON COLUMN "AXIS"."ANUSEG"."SPRODTAR" IS 'C�digo de identificaci�n del producto que se utilizar� para tarifar';
   COMMENT ON COLUMN "AXIS"."ANUSEG"."NCUOTAR" IS 'N�mero cuotas de tarjeta';
   COMMENT ON COLUMN "AXIS"."ANUSEG"."CTIPRETR" IS 'Tipo de retribuci�n';
   COMMENT ON COLUMN "AXIS"."ANUSEG"."CINDREVFRAN" IS 'Revalorizaci�n franquicia';
   COMMENT ON COLUMN "AXIS"."ANUSEG"."PRECARG" IS 'Recargo t�cnico';
   COMMENT ON COLUMN "AXIS"."ANUSEG"."PDTOTEC" IS 'Descuento t�cnico';
   COMMENT ON COLUMN "AXIS"."ANUSEG"."PRECCOM" IS 'Recargo comercial';
   COMMENT ON COLUMN "AXIS"."ANUSEG"."FRENOVA" IS 'Fecha renovaci�n';
   COMMENT ON TABLE "AXIS"."ANUSEG"  IS 'Informaci�n de seguros y tablas satelite (estructura historicoseguros)';
  GRANT UPDATE ON "AXIS"."ANUSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ANUSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ANUSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ANUSEG" TO "PROGRAMADORESCSI";
