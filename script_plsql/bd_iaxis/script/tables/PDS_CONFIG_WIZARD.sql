--------------------------------------------------------
--  DDL for Table PDS_CONFIG_WIZARD
--------------------------------------------------------

  CREATE TABLE "AXIS"."PDS_CONFIG_WIZARD" 
   (	"CCONFWIZ" VARCHAR2(50 BYTE), 
	"CMODO" VARCHAR2(50 BYTE), 
	"SPRODUC" NUMBER, 
	"FORM_ACT" VARCHAR2(50 BYTE), 
	"CAMPO_ACT" VARCHAR2(50 BYTE), 
	"FORM_SIG" VARCHAR2(50 BYTE), 
	"FORM_ANT" VARCHAR2(50 BYTE), 
	"NITERACIO" NUMBER, 
	"CSITUAC" VARCHAR2(1 BYTE), 
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

   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_WIZARD"."CCONFWIZ" IS 'Id. de la configuracion de navegaci�n';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_WIZARD"."CMODO" IS 'modo de configuracion';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_WIZARD"."SPRODUC" IS 'Id. del producto';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_WIZARD"."FORM_ACT" IS 'Form actual';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_WIZARD"."CAMPO_ACT" IS 'Camp del form actual';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_WIZARD"."FORM_SIG" IS 'Form seg�ent';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_WIZARD"."FORM_ANT" IS 'Form anterior';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_WIZARD"."NITERACIO" IS 'Numero de cops que cal visitar el form';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_WIZARD"."CSITUAC" IS 'Situaci� del form en la navegaci�';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_WIZARD"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_WIZARD"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_WIZARD"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_WIZARD"."FMODIFI" IS 'Fecha en que se modifica el registro';
  GRANT UPDATE ON "AXIS"."PDS_CONFIG_WIZARD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PDS_CONFIG_WIZARD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PDS_CONFIG_WIZARD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PDS_CONFIG_WIZARD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PDS_CONFIG_WIZARD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PDS_CONFIG_WIZARD" TO "PROGRAMADORESCSI";
