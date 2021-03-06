--------------------------------------------------------
--  DDL for Table MIG_HISTORICOSEGUROS_BS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_HISTORICOSEGUROS_BS" 
   (	"MIG_PK" VARCHAR2(50 BYTE), 
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
	"NPOLCOA" VARCHAR2(10 BYTE), 
	"NSUPCOA" VARCHAR2(6 BYTE), 
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
	"MIG_FK3" VARCHAR2(50 BYTE), 
	"SUCREA" VARCHAR2(20 BYTE), 
	"FECHAING" DATE, 
	"MODULO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT DELETE ON "AXIS"."MIG_HISTORICOSEGUROS_BS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_HISTORICOSEGUROS_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_HISTORICOSEGUROS_BS" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_HISTORICOSEGUROS_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_HISTORICOSEGUROS_BS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_HISTORICOSEGUROS_BS" TO "PROGRAMADORESCSI";
