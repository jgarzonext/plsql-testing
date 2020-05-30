--------------------------------------------------------
--  DDL for Table CARREGA_COL
--------------------------------------------------------

  CREATE TABLE "AXIS"."CARREGA_COL" 
   (	"SPROCES" NUMBER, 
	"NLINEA" NUMBER(6,0), 
	"POLISSA_INI" VARCHAR2(15 BYTE), 
	"TAPELLI_PROMO" VARCHAR2(20 BYTE), 
	"NNUMNIF_PROMO" VARCHAR2(14 BYTE), 
	"CSIGLAS_PROMO" NUMBER(2,0), 
	"TDOMICI_PRO" VARCHAR2(40 BYTE), 
	"NNUMVIA_PRO" NUMBER(5,0), 
	"T_COMPLE_PROMO" VARCHAR2(15 BYTE), 
	"CPOSTAL_PROMO" VARCHAR2(30 BYTE), 
	"TPOBLAC_PROMO" VARCHAR2(50 BYTE), 
	"TPROVIN_PROMO" VARCHAR2(30 BYTE), 
	"CBANCAR_PROMO" VARCHAR2(50 BYTE), 
	"CFISCAL_PROMO" NUMBER(1,0), 
	"CTIPREG" VARCHAR2(1 BYTE), 
	"TIDENTI_ASSEG" NUMBER(1,0), 
	"NNUMNIF_ASSEG" VARCHAR2(14 BYTE), 
	"TNOM_ASSEG" VARCHAR2(20 BYTE), 
	"TAPELLI1_ASSEG" VARCHAR2(40 BYTE), 
	"TAPELLI2_ASSEG" VARCHAR2(19 BYTE), 
	"CSEXPER_ASSEG" NUMBER(1,0), 
	"CESTCIV_ASSEG" NUMBER(1,0), 
	"FNACIMI_ASSEG" DATE, 
	"ISALARI_ASSEG" NUMBER, 
	"FINGRES_ASSEG" DATE, 
	"CFISCAL_ASSEG" NUMBER(1,0), 
	"CSIGLAS_ASSEG" NUMBER(2,0), 
	"TDOMICI_ASSEG" VARCHAR2(40 BYTE), 
	"NNUMVIA_ASSEG" NUMBER(5,0), 
	"TCOMPLE_ASSEG" VARCHAR2(15 BYTE), 
	"CPOSTAL_ASSEG" NUMBER(5,0), 
	"TPOBLAC_ASSEG" VARCHAR2(50 BYTE), 
	"TPROVIN_ASSEG" VARCHAR2(30 BYTE), 
	"CBANCAR_ASSEG" VARCHAR2(50 BYTE), 
	"IAPOINI_PROMO" NUMBER, 
	"IAPOINI_ASSEG" NUMBER, 
	"IPRIANU_PER" NUMBER, 
	"PAPOR_PROMO" NUMBER(5,2), 
	"IAPOR_PROMO" NUMBER, 
	"FCARPRO_PROMO" DATE, 
	"FCARPRO_ASSEG" DATE, 
	"CFORPAG_PROM" NUMBER(2,0), 
	"CFORPAG_ASSEG" NUMBER(2,0), 
	"CREVALI" NUMBER(1,0), 
	"PREVALI" NUMBER(5,2), 
	"FREVALI" DATE, 
	"TBENEF1" VARCHAR2(4000 BYTE), 
	"TBENEF2" VARCHAR2(4000 BYTE), 
	"TBENEF3" VARCHAR2(4000 BYTE), 
	"CESTADO" NUMBER(1,0), 
	"SPERSON" NUMBER(10,0), 
	"CDOMICI" NUMBER, 
	"SSEGURO" NUMBER, 
	"CERROR" NUMBER(8,0), 
	"CTIPBAN" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CARREGA_COL"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
  GRANT UPDATE ON "AXIS"."CARREGA_COL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CARREGA_COL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CARREGA_COL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CARREGA_COL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CARREGA_COL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CARREGA_COL" TO "PROGRAMADORESCSI";
