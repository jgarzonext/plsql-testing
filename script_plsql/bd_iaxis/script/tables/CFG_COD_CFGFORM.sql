--------------------------------------------------------
--  DDL for Table CFG_COD_CFGFORM
--------------------------------------------------------

  CREATE TABLE "AXIS"."CFG_COD_CFGFORM" 
   (	"CEMPRES" NUMBER(2,0), 
	"CCFGFORM" VARCHAR2(50 BYTE), 
	"TDESC" VARCHAR2(250 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CFG_COD_CFGFORM"."CEMPRES" IS 'C�digo de la empresa';
   COMMENT ON COLUMN "AXIS"."CFG_COD_CFGFORM"."CCFGFORM" IS 'Id. del tipo de configuraci�n de formulario';
   COMMENT ON COLUMN "AXIS"."CFG_COD_CFGFORM"."TDESC" IS 'Descripci�n del tipo de configuraci�n de formulario';
   COMMENT ON TABLE "AXIS"."CFG_COD_CFGFORM"  IS 'Tabla con los tipos configuraciones de formularios para usuarios existentes en el aplicativo';
  GRANT UPDATE ON "AXIS"."CFG_COD_CFGFORM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_COD_CFGFORM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CFG_COD_CFGFORM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CFG_COD_CFGFORM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_COD_CFGFORM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CFG_COD_CFGFORM" TO "PROGRAMADORESCSI";