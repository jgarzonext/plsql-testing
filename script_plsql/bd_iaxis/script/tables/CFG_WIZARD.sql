--------------------------------------------------------
--  DDL for Table CFG_WIZARD
--------------------------------------------------------

  CREATE TABLE "AXIS"."CFG_WIZARD" 
   (	"CEMPRES" NUMBER(2,0), 
	"CMODO" VARCHAR2(50 BYTE), 
	"CCFGWIZ" VARCHAR2(50 BYTE), 
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

   COMMENT ON COLUMN "AXIS"."CFG_WIZARD"."CEMPRES" IS 'Código de la empresa';
   COMMENT ON COLUMN "AXIS"."CFG_WIZARD"."CMODO" IS 'Id. del modo (flujo) de navegación';
   COMMENT ON COLUMN "AXIS"."CFG_WIZARD"."CCFGWIZ" IS 'Id. del tipo de configuración de navegación';
   COMMENT ON COLUMN "AXIS"."CFG_WIZARD"."SPRODUC" IS 'Id. del producto';
   COMMENT ON COLUMN "AXIS"."CFG_WIZARD"."CIDCFG" IS 'Id. de la configuración de navegación';
   COMMENT ON COLUMN "AXIS"."CFG_WIZARD"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."CFG_WIZARD"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."CFG_WIZARD"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."CFG_WIZARD"."FMODIFI" IS 'Fecha en que se modifica el registro';
  GRANT UPDATE ON "AXIS"."CFG_WIZARD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_WIZARD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CFG_WIZARD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CFG_WIZARD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_WIZARD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CFG_WIZARD" TO "PROGRAMADORESCSI";
