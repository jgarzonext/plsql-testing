--------------------------------------------------------
--  DDL for Table CFG_USER
--------------------------------------------------------

  CREATE TABLE "AXIS"."CFG_USER" 
   (	"CUSER" VARCHAR2(50 BYTE), 
	"CEMPRES" NUMBER(2,0), 
	"CCFGWIZ" VARCHAR2(50 BYTE), 
	"CCFGFORM" VARCHAR2(50 BYTE), 
	"CCFGACC" VARCHAR2(50 BYTE), 
	"CCFGDOC" VARCHAR2(50 BYTE), 
	"CACCPROD" VARCHAR2(50 BYTE), 
	"CCFGMAP" VARCHAR2(50 BYTE), 
	"CROL" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CFG_USER"."CUSER" IS 'Id. del usuario';
   COMMENT ON COLUMN "AXIS"."CFG_USER"."CEMPRES" IS 'Empresa';
   COMMENT ON COLUMN "AXIS"."CFG_USER"."CCFGWIZ" IS 'Id. del tipo de configuración de navegación asociada al usuario';
   COMMENT ON COLUMN "AXIS"."CFG_USER"."CCFGFORM" IS 'Id. del tipo de configuración de formularios asociada al usuario';
   COMMENT ON COLUMN "AXIS"."CFG_USER"."CCFGACC" IS 'Id. de la configuración de acciones asociada al usuario';
   COMMENT ON COLUMN "AXIS"."CFG_USER"."CCFGDOC" IS 'Id. de la configuración de acceso a documentación del usuario';
   COMMENT ON COLUMN "AXIS"."CFG_USER"."CACCPROD" IS 'Código del perfil de acceso a productos';
   COMMENT ON COLUMN "AXIS"."CFG_USER"."CCFGMAP" IS 'Id. del tipo de perfil de map';
   COMMENT ON COLUMN "AXIS"."CFG_USER"."CROL" IS 'Rol del usuario';
   COMMENT ON TABLE "AXIS"."CFG_USER"  IS 'Tabla de configuración de usuarios donde se indica las configuraciones por defecto (de navegación, formulario, acciones, etc) asociadas a los usuarios de la aplicación';
  GRANT UPDATE ON "AXIS"."CFG_USER" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_USER" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CFG_USER" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CFG_USER" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_USER" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CFG_USER" TO "PROGRAMADORESCSI";
