--------------------------------------------------------
--  DDL for Table DESBONUS
--------------------------------------------------------

  CREATE TABLE "AXIS"."DESBONUS" 
   (	"SBONUS" NUMBER(4,0), 
	"CIDIOMA" NUMBER(2,0), 
	"TBONUS" VARCHAR2(40 BYTE), 
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

   COMMENT ON COLUMN "AXIS"."DESBONUS"."SBONUS" IS 'Fk de codbonus';
   COMMENT ON COLUMN "AXIS"."DESBONUS"."CIDIOMA" IS 'Idioma';
   COMMENT ON COLUMN "AXIS"."DESBONUS"."TBONUS" IS 'Descripcion escala bonus';
   COMMENT ON COLUMN "AXIS"."DESBONUS"."FALTA" IS 'Fecha alta';
   COMMENT ON COLUMN "AXIS"."DESBONUS"."CUSUALT" IS 'Usuario alta';
   COMMENT ON COLUMN "AXIS"."DESBONUS"."FMODIF" IS 'Fecha modificacion';
   COMMENT ON COLUMN "AXIS"."DESBONUS"."CUSUMOD" IS 'usuario modificacion';
  GRANT UPDATE ON "AXIS"."DESBONUS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESBONUS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DESBONUS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DESBONUS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESBONUS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DESBONUS" TO "PROGRAMADORESCSI";