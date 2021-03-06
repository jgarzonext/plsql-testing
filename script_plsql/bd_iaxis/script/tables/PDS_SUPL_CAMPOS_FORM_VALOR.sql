--------------------------------------------------------
--  DDL for Table PDS_SUPL_CAMPOS_FORM_VALOR
--------------------------------------------------------

  CREATE TABLE "AXIS"."PDS_SUPL_CAMPOS_FORM_VALOR" 
   (	"CCONFIG" VARCHAR2(50 BYTE), 
	"TFORM" VARCHAR2(50 BYTE), 
	"TVALOR" VARCHAR2(50 BYTE), 
	"IDSELECT" NUMBER, 
	"TSELECT" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PDS_SUPL_CAMPOS_FORM_VALOR"."CCONFIG" IS 'Id. de la configuració (form+mode+motiu+prod)';
   COMMENT ON COLUMN "AXIS"."PDS_SUPL_CAMPOS_FORM_VALOR"."TVALOR" IS 'Valor que tiene que tener el campo';
   COMMENT ON TABLE "AXIS"."PDS_SUPL_CAMPOS_FORM_VALOR"  IS 'Tabla de configuración de campos de un form si se realiza un suplemento y a un campo se le asigna un valor predefinido. ej .- cforpag =0';
  GRANT UPDATE ON "AXIS"."PDS_SUPL_CAMPOS_FORM_VALOR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PDS_SUPL_CAMPOS_FORM_VALOR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PDS_SUPL_CAMPOS_FORM_VALOR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PDS_SUPL_CAMPOS_FORM_VALOR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PDS_SUPL_CAMPOS_FORM_VALOR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PDS_SUPL_CAMPOS_FORM_VALOR" TO "PROGRAMADORESCSI";
