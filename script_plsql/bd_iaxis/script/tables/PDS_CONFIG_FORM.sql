--------------------------------------------------------
--  DDL for Table PDS_CONFIG_FORM
--------------------------------------------------------

  CREATE TABLE "AXIS"."PDS_CONFIG_FORM" 
   (	"CCONFORM" VARCHAR2(50 BYTE), 
	"CMODO" VARCHAR2(50 BYTE), 
	"SPRODUC" NUMBER, 
	"TCAMPO" VARCHAR2(100 BYTE), 
	"TFORM" VARCHAR2(50 BYTE), 
	"TPROPERTY" VARCHAR2(50 BYTE), 
	"TVALUE" VARCHAR2(50 BYTE), 
	"NORDEN" NUMBER, 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_FORM"."CCONFORM" IS 'Id. de la configuraci�n';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_FORM"."CMODO" IS 'Modo de entrada en el form';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_FORM"."SPRODUC" IS 'Id. del producto';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_FORM"."TCAMPO" IS 'Campo a modificar';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_FORM"."TFORM" IS 'Form a modificar';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_FORM"."TPROPERTY" IS 'Propriedad a modificar';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_FORM"."TVALUE" IS 'Valor de la propiedad';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_FORM"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_FORM"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_FORM"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_FORM"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON TABLE "AXIS"."PDS_CONFIG_FORM"  IS 'Tabla de configuraci�n de un formulario, se cambian las propiedades especificadas del form al entrar';
  GRANT UPDATE ON "AXIS"."PDS_CONFIG_FORM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PDS_CONFIG_FORM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PDS_CONFIG_FORM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PDS_CONFIG_FORM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PDS_CONFIG_FORM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PDS_CONFIG_FORM" TO "PROGRAMADORESCSI";