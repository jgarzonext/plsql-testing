--------------------------------------------------------
--  DDL for Table DESZONIF
--------------------------------------------------------

  CREATE TABLE "AXIS"."DESZONIF" 
   (	"SZONIF" NUMBER(4,0), 
	"CIDIOMA" NUMBER(2,0), 
	"TZONIF" VARCHAR2(40 BYTE), 
	"FALTA" DATE, 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FMODIF" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DESZONIF"."SZONIF" IS 'Identificador de zonificación';
   COMMENT ON COLUMN "AXIS"."DESZONIF"."CIDIOMA" IS 'Idioma';
   COMMENT ON COLUMN "AXIS"."DESZONIF"."TZONIF" IS 'Descripción zonificación';
   COMMENT ON COLUMN "AXIS"."DESZONIF"."FALTA" IS 'Fecha alta';
   COMMENT ON COLUMN "AXIS"."DESZONIF"."CUSUALT" IS 'Usuario alta';
   COMMENT ON COLUMN "AXIS"."DESZONIF"."FMODIF" IS 'Fecha modificación';
   COMMENT ON COLUMN "AXIS"."DESZONIF"."CUSUMOD" IS 'Usuario modificación';
   COMMENT ON TABLE "AXIS"."DESZONIF"  IS 'Descripción de zonificaciones';
  GRANT UPDATE ON "AXIS"."DESZONIF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESZONIF" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DESZONIF" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DESZONIF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESZONIF" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DESZONIF" TO "PROGRAMADORESCSI";
