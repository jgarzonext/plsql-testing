--------------------------------------------------------
--  DDL for Table CFG_ROL
--------------------------------------------------------

  CREATE TABLE "AXIS"."CFG_ROL" 
   (	"CROL" VARCHAR2(50 BYTE), 
	"CEMPRES" NUMBER(2,0), 
	"CCFGWIZ" VARCHAR2(50 BYTE), 
	"CCFGFORM" VARCHAR2(50 BYTE), 
	"CCFGACC" VARCHAR2(50 BYTE), 
	"CCFGDOC" VARCHAR2(50 BYTE), 
	"CACCPROD" VARCHAR2(50 BYTE), 
	"CCFGMAP" VARCHAR2(50 BYTE), 
	"CUSUAGRU" VARCHAR2(4 BYTE), 
	"CROLMEN" VARCHAR2(20 BYTE), 
	"CCONSUPL" VARCHAR2(50 BYTE), 
	"ILIMITE" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CFG_ROL"."CROL" IS 'Id. del rol';
   COMMENT ON COLUMN "AXIS"."CFG_ROL"."CEMPRES" IS 'Empresa';
   COMMENT ON COLUMN "AXIS"."CFG_ROL"."CCFGWIZ" IS 'Id. del tipo de configuraci�n de navegaci�n asociada al rol';
   COMMENT ON COLUMN "AXIS"."CFG_ROL"."CCFGFORM" IS 'Id. del tipo de configuraci�n de formularios asociada al rol';
   COMMENT ON COLUMN "AXIS"."CFG_ROL"."CCFGACC" IS 'Id. de la configuraci�n de acciones asociada al rol';
   COMMENT ON COLUMN "AXIS"."CFG_ROL"."CCFGDOC" IS 'Id. de la configuraci�n de acceso a documentaci�n del rol';
   COMMENT ON COLUMN "AXIS"."CFG_ROL"."CACCPROD" IS 'C�digo del perfil de acceso a productos';
   COMMENT ON COLUMN "AXIS"."CFG_ROL"."CCFGMAP" IS 'Id. del tipo de perfil de map';
   COMMENT ON COLUMN "AXIS"."CFG_ROL"."CUSUAGRU" IS 'C�digo de la agrupaci�n';
   COMMENT ON COLUMN "AXIS"."CFG_ROL"."CROLMEN" IS 'Rol de men�';
   COMMENT ON COLUMN "AXIS"."CFG_ROL"."CCONSUPL" IS 'id. conf de los suplementos';
   COMMENT ON COLUMN "AXIS"."CFG_ROL"."ILIMITE" IS 'Importe L�mite';
   COMMENT ON TABLE "AXIS"."CFG_ROL"  IS 'Tabla de configuraci�n de roles donde se indican las configuraciones por defecto (de navegaci�n, formulario, acciones, etc) asociadas a los roles de la aplicaci�n';
  GRANT UPDATE ON "AXIS"."CFG_ROL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_ROL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CFG_ROL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CFG_ROL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_ROL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CFG_ROL" TO "PROGRAMADORESCSI";
