--------------------------------------------------------
--  DDL for Table DESACTOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."DESACTOS" 
   (	"CACTO" VARCHAR2(10 BYTE), 
	"CIDIOMA" NUMBER(2,0), 
	"TACTO" VARCHAR2(150 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DESACTOS"."CACTO" IS 'C�digo de acto m�dico';
   COMMENT ON COLUMN "AXIS"."DESACTOS"."CIDIOMA" IS 'C�digo de idioma';
   COMMENT ON COLUMN "AXIS"."DESACTOS"."TACTO" IS 'Descripci�n';
  GRANT UPDATE ON "AXIS"."DESACTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESACTOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DESACTOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DESACTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESACTOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DESACTOS" TO "PROGRAMADORESCSI";
