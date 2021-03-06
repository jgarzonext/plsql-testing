--------------------------------------------------------
--  DDL for Table MENU_OPCIONROL
--------------------------------------------------------

  CREATE TABLE "AXIS"."MENU_OPCIONROL" 
   (	"CROLMEN" VARCHAR2(20 BYTE), 
	"COPCION" NUMBER(6,0), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MENU_OPCIONROL"."CROLMEN" IS 'Id del rol de menu';
   COMMENT ON COLUMN "AXIS"."MENU_OPCIONROL"."COPCION" IS 'Id de la opcion de menu';
   COMMENT ON COLUMN "AXIS"."MENU_OPCIONROL"."CUSUALT" IS 'USUARIO QUE DA DE ALTA EL REGISTRO';
   COMMENT ON COLUMN "AXIS"."MENU_OPCIONROL"."FALTA" IS 'FECHA DE ALTA DEL REGISTRO';
   COMMENT ON COLUMN "AXIS"."MENU_OPCIONROL"."CUSUMOD" IS 'USUARIO QUE MODIFICA EL REGISTRO';
   COMMENT ON COLUMN "AXIS"."MENU_OPCIONROL"."FMODIFI" IS 'FECHA DE MOFICIACIÓN DEL REGISTRO';
   COMMENT ON TABLE "AXIS"."MENU_OPCIONROL"  IS 'Opciones segun el rol de menu';
  GRANT UPDATE ON "AXIS"."MENU_OPCIONROL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MENU_OPCIONROL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MENU_OPCIONROL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MENU_OPCIONROL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MENU_OPCIONROL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MENU_OPCIONROL" TO "PROGRAMADORESCSI";
