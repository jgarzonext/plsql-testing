--------------------------------------------------------
--  DDL for Table HIS_PDS_CONFIG_WIZARD
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_PDS_CONFIG_WIZARD" 
   (	"CCONFWIZ" VARCHAR2(50 BYTE), 
	"CMODO" VARCHAR2(50 BYTE), 
	"SPRODUC" NUMBER(22,0), 
	"FORM_ACT" VARCHAR2(50 BYTE), 
	"CAMPO_ACT" VARCHAR2(50 BYTE), 
	"FORM_SIG" VARCHAR2(50 BYTE), 
	"FORM_ANT" VARCHAR2(50 BYTE), 
	"NITERACIO" NUMBER(22,0), 
	"CSITUAC" VARCHAR2(1 BYTE), 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE, 
	"CUSUHIST" VARCHAR2(20 BYTE), 
	"FCREAHIST" DATE, 
	"ACCION" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_PDS_CONFIG_WIZARD"."CCONFWIZ" IS 'Id. de la configuracion de navegaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_CONFIG_WIZARD"."CMODO" IS 'modo de configuracion';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_CONFIG_WIZARD"."SPRODUC" IS 'Id. del producto';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_CONFIG_WIZARD"."FORM_ACT" IS 'Form actual';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_CONFIG_WIZARD"."CAMPO_ACT" IS 'Camp del form actual';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_CONFIG_WIZARD"."FORM_SIG" IS 'Form seg�ent';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_CONFIG_WIZARD"."FORM_ANT" IS 'Form anterior';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_CONFIG_WIZARD"."NITERACIO" IS 'Numero de cops que cal visitar el form';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_CONFIG_WIZARD"."CSITUAC" IS 'Situaci� del form en la navegaci�';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_CONFIG_WIZARD"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_CONFIG_WIZARD"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_CONFIG_WIZARD"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_CONFIG_WIZARD"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_CONFIG_WIZARD"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_CONFIG_WIZARD"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_CONFIG_WIZARD"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_PDS_CONFIG_WIZARD"  IS 'Hist�rico de la tabla PDS_CONFIG_WIZARD';
  GRANT UPDATE ON "AXIS"."HIS_PDS_CONFIG_WIZARD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PDS_CONFIG_WIZARD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_PDS_CONFIG_WIZARD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_PDS_CONFIG_WIZARD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PDS_CONFIG_WIZARD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_PDS_CONFIG_WIZARD" TO "PROGRAMADORESCSI";
