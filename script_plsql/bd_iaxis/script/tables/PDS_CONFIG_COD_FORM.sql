--------------------------------------------------------
--  DDL for Table PDS_CONFIG_COD_FORM
--------------------------------------------------------

  CREATE TABLE "AXIS"."PDS_CONFIG_COD_FORM" 
   (	"CCONFORM" VARCHAR2(50 BYTE), 
	"TCONFORM" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_COD_FORM"."CCONFORM" IS 'ID. de la configuracion de formularios';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_COD_FORM"."TCONFORM" IS 'Desctipci�n de la configuraci�n de formularios';
   COMMENT ON TABLE "AXIS"."PDS_CONFIG_COD_FORM"  IS 'configuraciones de navegaci�n';
  GRANT UPDATE ON "AXIS"."PDS_CONFIG_COD_FORM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PDS_CONFIG_COD_FORM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PDS_CONFIG_COD_FORM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PDS_CONFIG_COD_FORM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PDS_CONFIG_COD_FORM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PDS_CONFIG_COD_FORM" TO "PROGRAMADORESCSI";