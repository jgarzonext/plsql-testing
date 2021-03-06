--------------------------------------------------------
--  DDL for Table PDS_CONFIG_ACCION
--------------------------------------------------------

  CREATE TABLE "AXIS"."PDS_CONFIG_ACCION" 
   (	"CCONACC" VARCHAR2(50 BYTE), 
	"CACCION" VARCHAR2(50 BYTE), 
	"CREALIZA" NUMBER, 
	"SPRODUC" NUMBER, 
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

   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_ACCION"."CCONACC" IS 'Id. de las acciones';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_ACCION"."CACCION" IS 'Acciones a realizar';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_ACCION"."CREALIZA" IS 'Opci�n al realizar la acci�n';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_ACCION"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_ACCION"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_ACCION"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."PDS_CONFIG_ACCION"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON TABLE "AXIS"."PDS_CONFIG_ACCION"  IS 'Configuraci�n de las acciones a realizar';
  GRANT UPDATE ON "AXIS"."PDS_CONFIG_ACCION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PDS_CONFIG_ACCION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PDS_CONFIG_ACCION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PDS_CONFIG_ACCION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PDS_CONFIG_ACCION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PDS_CONFIG_ACCION" TO "PROGRAMADORESCSI";
