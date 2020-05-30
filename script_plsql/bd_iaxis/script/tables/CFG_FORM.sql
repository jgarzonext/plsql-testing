--------------------------------------------------------
--  DDL for Table CFG_FORM
--------------------------------------------------------

  CREATE TABLE "AXIS"."CFG_FORM" 
   (	"CEMPRES" NUMBER(2,0), 
	"CFORM" VARCHAR2(50 BYTE), 
	"CMODO" VARCHAR2(50 BYTE), 
	"CCFGFORM" VARCHAR2(50 BYTE), 
	"SPRODUC" NUMBER(6,0), 
	"CIDCFG" NUMBER(6,0), 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CFG_FORM"."CEMPRES" IS 'C�digo de la empresa';
   COMMENT ON COLUMN "AXIS"."CFG_FORM"."CFORM" IS 'Id. del formulario';
   COMMENT ON COLUMN "AXIS"."CFG_FORM"."CMODO" IS 'Id. del modo de configuraci�n';
   COMMENT ON COLUMN "AXIS"."CFG_FORM"."CCFGFORM" IS 'Id. del tipo de configuraci�n del formulario';
   COMMENT ON COLUMN "AXIS"."CFG_FORM"."SPRODUC" IS 'Id. del producto';
   COMMENT ON COLUMN "AXIS"."CFG_FORM"."CIDCFG" IS 'Id. de la configuraci�n del formulario';
   COMMENT ON COLUMN "AXIS"."CFG_FORM"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."CFG_FORM"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."CFG_FORM"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."CFG_FORM"."FMODIFI" IS 'Fecha en que se modifica el registro';
  GRANT UPDATE ON "AXIS"."CFG_FORM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_FORM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CFG_FORM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CFG_FORM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_FORM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CFG_FORM" TO "PROGRAMADORESCSI";