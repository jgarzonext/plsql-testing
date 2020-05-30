--------------------------------------------------------
--  DDL for Table DSIOPCIONES
--------------------------------------------------------

  CREATE TABLE "AXIS"."DSIOPCIONES" 
   (	"COPCION" NUMBER(6,0), 
	"CMENU" NUMBER(6,0), 
	"CINVCOD" VARCHAR2(50 BYTE), 
	"CINVTIP" NUMBER(2,0), 
	"CMENPAD" NUMBER(6,0), 
	"NORDEN" NUMBER(3,0), 
	"TPARAME" VARCHAR2(100 BYTE), 
	"CTIPMEN" NUMBER(1,0), 
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

   COMMENT ON COLUMN "AXIS"."DSIOPCIONES"."COPCION" IS 'ID DE LA OPCION';
   COMMENT ON COLUMN "AXIS"."DSIOPCIONES"."CMENU" IS 'OPCION DE MENU LLAMADA';
   COMMENT ON COLUMN "AXIS"."DSIOPCIONES"."CINVCOD" IS 'MODULO LLAMADO';
   COMMENT ON COLUMN "AXIS"."DSIOPCIONES"."CINVTIP" IS 'MODULO LLAMADO';
   COMMENT ON COLUMN "AXIS"."DSIOPCIONES"."CMENPAD" IS 'OPCION DE MENU PADRE';
   COMMENT ON COLUMN "AXIS"."DSIOPCIONES"."NORDEN" IS 'ORDEN DEL MENU EN SU NIVEL';
   COMMENT ON COLUMN "AXIS"."DSIOPCIONES"."TPARAME" IS 'PARAMETROS DE LA LLAMADA AL MODULO';
   COMMENT ON COLUMN "AXIS"."DSIOPCIONES"."CTIPMEN" IS 'TIPO DEL LLAMADO: 1 MENU, 2 OBJETO';
   COMMENT ON COLUMN "AXIS"."DSIOPCIONES"."CUSUALT" IS 'USUARIO QUE DA DE ALTA EL REGISTRO';
   COMMENT ON COLUMN "AXIS"."DSIOPCIONES"."FALTA" IS 'FECHA DE ALTA DEL REGISTRO';
   COMMENT ON COLUMN "AXIS"."DSIOPCIONES"."CUSUMOD" IS 'USUARIO QUE MODIFICA EL REGISTRO';
   COMMENT ON COLUMN "AXIS"."DSIOPCIONES"."FMODIFI" IS 'FECHA DE MOFICIACIÓN DEL REGISTRO';
   COMMENT ON TABLE "AXIS"."DSIOPCIONES"  IS 'Jerarquia y opciones del menu albor';
  GRANT UPDATE ON "AXIS"."DSIOPCIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DSIOPCIONES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DSIOPCIONES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DSIOPCIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DSIOPCIONES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DSIOPCIONES" TO "PROGRAMADORESCSI";
