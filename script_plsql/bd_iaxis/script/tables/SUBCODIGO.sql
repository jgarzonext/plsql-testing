--------------------------------------------------------
--  DDL for Table SUBCODIGO
--------------------------------------------------------

  CREATE TABLE "AXIS"."SUBCODIGO" 
   (	"CSUBCOD" VARCHAR2(5 BYTE), 
	"CIDIOMA" NUMBER(2,0), 
	"TSUBCOD" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SUBCODIGO"."CIDIOMA" IS 'C�digo de Idioma';
  GRANT UPDATE ON "AXIS"."SUBCODIGO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SUBCODIGO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SUBCODIGO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SUBCODIGO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SUBCODIGO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SUBCODIGO" TO "PROGRAMADORESCSI";
