--------------------------------------------------------
--  DDL for Table DESCLARIE
--------------------------------------------------------

  CREATE TABLE "AXIS"."DESCLARIE" 
   (	"CCLARIE" NUMBER(2,0), 
	"CIDIOMA" NUMBER(2,0), 
	"TCLARIE" VARCHAR2(40 BYTE), 
	"TAYUDA" VARCHAR2(2000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DESCLARIE"."CCLARIE" IS 'C�dogo de la Clase de Riesgo';
   COMMENT ON COLUMN "AXIS"."DESCLARIE"."CIDIOMA" IS 'C�digo de Idioma';
   COMMENT ON COLUMN "AXIS"."DESCLARIE"."TCLARIE" IS 'Descripci�n breve';
   COMMENT ON COLUMN "AXIS"."DESCLARIE"."TAYUDA" IS 'Texto de ayuda';
  GRANT UPDATE ON "AXIS"."DESCLARIE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESCLARIE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DESCLARIE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DESCLARIE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESCLARIE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DESCLARIE" TO "PROGRAMADORESCSI";