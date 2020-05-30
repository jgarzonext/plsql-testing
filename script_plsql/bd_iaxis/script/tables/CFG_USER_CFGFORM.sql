--------------------------------------------------------
--  DDL for Table CFG_USER_CFGFORM
--------------------------------------------------------

  CREATE TABLE "AXIS"."CFG_USER_CFGFORM" 
   (	"CEMPRES" NUMBER(2,0), 
	"CUSER" VARCHAR2(50 BYTE), 
	"CFORM" VARCHAR2(50 BYTE), 
	"CCFGFORM" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CFG_USER_CFGFORM"."CEMPRES" IS 'Código de la empresa';
   COMMENT ON COLUMN "AXIS"."CFG_USER_CFGFORM"."CUSER" IS 'Id. del usuario';
   COMMENT ON COLUMN "AXIS"."CFG_USER_CFGFORM"."CFORM" IS 'Id. del formulario para el que el usuario tiene un tipo de configuración diferente al asociado por defecto en la tabla CFG_USER';
   COMMENT ON COLUMN "AXIS"."CFG_USER_CFGFORM"."CCFGFORM" IS 'Id. del tipo de configuración de formulario del usuario en el formulario indicado';
   COMMENT ON TABLE "AXIS"."CFG_USER_CFGFORM"  IS 'Tabla con los tipos de configuración específicos de los usuarios (diferentes a los asociados por defecto en la tabla cfg_user) para determinados formularios.';
  GRANT UPDATE ON "AXIS"."CFG_USER_CFGFORM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_USER_CFGFORM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CFG_USER_CFGFORM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CFG_USER_CFGFORM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_USER_CFGFORM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CFG_USER_CFGFORM" TO "PROGRAMADORESCSI";
