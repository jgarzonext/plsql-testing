--------------------------------------------------------
--  DDL for Table DSIOPCROL
--------------------------------------------------------

  CREATE TABLE "AXIS"."DSIOPCROL" 
   (	"COPCION" NUMBER(6,0), 
	"CROLMEN" VARCHAR2(20 BYTE), 
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

   COMMENT ON COLUMN "AXIS"."DSIOPCROL"."COPCION" IS 'Id de la opcion de menu';
   COMMENT ON COLUMN "AXIS"."DSIOPCROL"."CROLMEN" IS 'Id del rol de menu';
   COMMENT ON COLUMN "AXIS"."DSIOPCROL"."CUSUALT" IS 'USUARIO QUE DA DE ALTA EL REGISTRO';
   COMMENT ON COLUMN "AXIS"."DSIOPCROL"."FALTA" IS 'FECHA DE ALTA DEL REGISTRO';
   COMMENT ON COLUMN "AXIS"."DSIOPCROL"."CUSUMOD" IS 'USUARIO QUE MODIFICA EL REGISTRO';
   COMMENT ON COLUMN "AXIS"."DSIOPCROL"."FMODIFI" IS 'FECHA DE MOFICIACIÓN DEL REGISTRO';
   COMMENT ON TABLE "AXIS"."DSIOPCROL"  IS 'Opciones segun el rol de menu';
  GRANT UPDATE ON "AXIS"."DSIOPCROL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DSIOPCROL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DSIOPCROL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DSIOPCROL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DSIOPCROL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DSIOPCROL" TO "PROGRAMADORESCSI";
