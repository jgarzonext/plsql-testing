--------------------------------------------------------
--  DDL for Table HIS_CFG_USER
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_CFG_USER" 
   (	"CUSER" VARCHAR2(50 BYTE), 
	"CEMPRES" NUMBER(2,0), 
	"CCFGWIZ" VARCHAR2(50 BYTE), 
	"CCFGFORM" VARCHAR2(50 BYTE), 
	"CCFGACC" VARCHAR2(50 BYTE), 
	"CCFGDOC" VARCHAR2(50 BYTE), 
	"FMODIF" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"CCFGMAP" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_CFG_USER"."CUSER" IS 'Id. del usuario';
   COMMENT ON COLUMN "AXIS"."HIS_CFG_USER"."CEMPRES" IS 'Empresa';
   COMMENT ON COLUMN "AXIS"."HIS_CFG_USER"."CCFGWIZ" IS 'Id. del tipo de configuraci�n de navegaci�n asociada al usuario';
   COMMENT ON COLUMN "AXIS"."HIS_CFG_USER"."CCFGFORM" IS 'Id. del tipo de configuraci�n de formularios asociada al usuario';
   COMMENT ON COLUMN "AXIS"."HIS_CFG_USER"."CCFGACC" IS 'Id. de la configuraci�n de acciones asociada al usuario';
   COMMENT ON COLUMN "AXIS"."HIS_CFG_USER"."CCFGDOC" IS 'Id. de la configuraci�n de acceso a documentaci�n del usuario';
   COMMENT ON COLUMN "AXIS"."HIS_CFG_USER"."FMODIF" IS 'Fecha de modificacion del registro';
   COMMENT ON COLUMN "AXIS"."HIS_CFG_USER"."CUSUMOD" IS 'Usuario de modificacion del registro';
   COMMENT ON COLUMN "AXIS"."HIS_CFG_USER"."CCFGMAP" IS 'Id. del tipo de perfil de map';
   COMMENT ON TABLE "AXIS"."HIS_CFG_USER"  IS 'Tabla de configuraci�n de usuarios donde se indica las configuraciones por defecto (de navegaci�n, formulario, acciones, etc) asociadas a los usuarios de la aplicaci�n';
  GRANT UPDATE ON "AXIS"."HIS_CFG_USER" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_CFG_USER" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_CFG_USER" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_CFG_USER" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_CFG_USER" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_CFG_USER" TO "PROGRAMADORESCSI";
