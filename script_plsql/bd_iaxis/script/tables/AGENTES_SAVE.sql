--------------------------------------------------------
--  DDL for Table AGENTES_SAVE
--------------------------------------------------------

  CREATE TABLE "AXIS"."AGENTES_SAVE" 
   (	"CAGENTE" NUMBER, 
	"CRETENC" NUMBER(2,0), 
	"CTIPIVA" NUMBER(2,0), 
	"SPERSON" NUMBER(10,0), 
	"CCOMISI" NUMBER, 
	"CTIPAGE" NUMBER(2,0), 
	"CACTIVO" NUMBER(1,0), 
	"CDOMICI" NUMBER, 
	"CBANCAR" VARCHAR2(50 BYTE), 
	"NCOLEGI" NUMBER(10,0), 
	"FBAJAGE" DATE, 
	"CSOPREC" NUMBER(2,0), 
	"CMEDIOP" NUMBER(2,0), 
	"CCUACOA" NUMBER(1,0), 
	"CTIPBAN" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AGENTES_SAVE"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
  GRANT UPDATE ON "AXIS"."AGENTES_SAVE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGENTES_SAVE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AGENTES_SAVE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AGENTES_SAVE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGENTES_SAVE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AGENTES_SAVE" TO "PROGRAMADORESCSI";
