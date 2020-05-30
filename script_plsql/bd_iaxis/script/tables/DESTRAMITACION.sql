--------------------------------------------------------
--  DDL for Table DESTRAMITACION
--------------------------------------------------------

  CREATE TABLE "AXIS"."DESTRAMITACION" 
   (	"CTRAMIT" NUMBER(4,0), 
	"CIDIOMA" NUMBER(2,0), 
	"TTRAMIT" VARCHAR2(40 BYTE), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIF" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DESTRAMITACION"."CTRAMIT" IS 'Codigo tramitacion';
   COMMENT ON COLUMN "AXIS"."DESTRAMITACION"."CIDIOMA" IS 'Codigo idioma';
   COMMENT ON COLUMN "AXIS"."DESTRAMITACION"."TTRAMIT" IS 'Descripcion tramitacion';
   COMMENT ON TABLE "AXIS"."DESTRAMITACION"  IS 'Tabla de TRAMITACIONES';
  GRANT UPDATE ON "AXIS"."DESTRAMITACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESTRAMITACION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DESTRAMITACION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DESTRAMITACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESTRAMITACION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DESTRAMITACION" TO "PROGRAMADORESCSI";