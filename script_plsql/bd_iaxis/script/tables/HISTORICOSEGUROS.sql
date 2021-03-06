--------------------------------------------------------
--  DDL for Table HISTORICOSEGUROS
--------------------------------------------------------

  CREATE TABLE "AXIS"."HISTORICOSEGUROS" 
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
	"CPLANCOLECT" FLOAT(126), 
	"CCOBTIP" FLOAT(126), 
	"CTIPVIG" FLOAT(126), 
	"RECPOR" FLOAT(126), 
	"CAGRUPA" FLOAT(126), 
	"PRORREXA" FLOAT(126), 
	"CMODALID" FLOAT(126), 
	"CAGASTEXP" FLOAT(126), 
	"CPERIOGAST" FLOAT(126), 
	"IIMPORGAST" FLOAT(126), 
	"FCORTE" DATE, 
	"FFACTURA" DATE, 
	"FRENOVA" DATE, 
	"FEFEPLAZO" DATE, 
	"FVENCPLAZO" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS"  ENABLE ROW MOVEMENT ;

   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."CCOMPANI" IS 'Compa��a';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."CBENREV" IS 'Valor S/N que indica si los beneficiaros son revocables o no';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."CDOMICI" IS 'Domicilio de la persona asignado al seguro';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."NDURPER" IS 'Duraci�n periodo inter�s garantizado';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."FREVISIO" IS 'Fecha de revisi�n/renovaci�n duraci�n per�odo inter�s garantizado';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."CTIPCOB" IS 'Tipo de cobro de la p�liza (VF 552)';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."FREVANT" IS 'Fecha revisi�n anterior';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."SPRODTAR" IS 'C�digo de identificaci�n del producto que se utilizar� para tarifar';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."NCUOTAR" IS 'N�mero cuotas de tarjeta';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."CTIPRETR" IS 'Tipo de retribuci�n';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."CINDREVFRAN" IS 'Revalorizaci�n franquicia';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."PRECARG" IS 'Recargo t�cnico';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."PDTOTEC" IS 'Descuento t�cnico';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."PRECCOM" IS 'Recargo comercial';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."CPLANCOLECT" IS 'Plan del colectivo - Preg: 4089';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."CCOBTIP" IS 'Tipo de cobro - Preg: 4084';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."CTIPVIG" IS 'Tipo de vigencia - Preg: 4790';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."RECPOR" IS 'Recibos por Tomador, Asegurado - Preg: 535';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."CAGRUPA" IS '�Agrupa recibos? - Preg: 4794';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."PRORREXA" IS 'Tipo de c�lculo: Prorrateo/Periodos exactos - Preg: 4791';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."CMODALID" IS 'Modalidad de la p�liza: Contributiva/No Contributiva - Preg: 4078';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."CAGASTEXP" IS 'Aplica gastos de expedici�n - Preg: 4093';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."CPERIOGAST" IS 'Periodicidad de los gatos - Preg: 4094';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."IIMPORGAST" IS 'Periodicidad de los gatos - Preg: 4095';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."FCORTE" IS 'Fecha de corte - Preg: 4792';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."FFACTURA" IS 'Fecha de facturaci�n - Preg: 4793';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."FRENOVA" IS 'Fecha renovaci�n';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."FEFEPLAZO" IS 'Fecha inicio Plazo';
   COMMENT ON COLUMN "AXIS"."HISTORICOSEGUROS"."FVENCPLAZO" IS 'Fecha fin plazo';
  GRANT UPDATE ON "AXIS"."HISTORICOSEGUROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISTORICOSEGUROS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HISTORICOSEGUROS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HISTORICOSEGUROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISTORICOSEGUROS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HISTORICOSEGUROS" TO "PROGRAMADORESCSI";
