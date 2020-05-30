--------------------------------------------------------
--  DDL for Table CFG_USER_CFGWIZARD
--------------------------------------------------------

  CREATE TABLE "AXIS"."CFG_USER_CFGWIZARD" 
   (	"CEMPRES" NUMBER(2,0), 
	"CUSER" VARCHAR2(50 BYTE), 
	"CMODO" VARCHAR2(50 BYTE), 
	"CCFGWIZ" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CFG_USER_CFGWIZARD"."CEMPRES" IS 'Código de la empresa';
   COMMENT ON COLUMN "AXIS"."CFG_USER_CFGWIZARD"."CUSER" IS 'Id. del usuario';
   COMMENT ON COLUMN "AXIS"."CFG_USER_CFGWIZARD"."CMODO" IS 'Id. del modo (flujo) para el que el usuario tiene una configuración diferente a la asociado por defecto';
   COMMENT ON COLUMN "AXIS"."CFG_USER_CFGWIZARD"."CCFGWIZ" IS 'Id. del tipo de configuración de navegación asociado al usuario en el modo indicado';
   COMMENT ON TABLE "AXIS"."CFG_USER_CFGWIZARD"  IS 'Tabla con los tipos de configuración específicos de los usuarios (diferentes a los asociados por defecto en la tabla cfg_user) para determinados modos (flujos).';
  GRANT UPDATE ON "AXIS"."CFG_USER_CFGWIZARD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_USER_CFGWIZARD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CFG_USER_CFGWIZARD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CFG_USER_CFGWIZARD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_USER_CFGWIZARD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CFG_USER_CFGWIZARD" TO "PROGRAMADORESCSI";
