--------------------------------------------------------
--  DDL for Table DEPORTES
--------------------------------------------------------

  CREATE TABLE "AXIS"."DEPORTES" 
   (	"CIDIOMA" NUMBER(2,0), 
	"CDEPORT" VARCHAR2(5 BYTE), 
	"TDEPORT" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DEPORTES"."CIDIOMA" IS 'C�digo de Idioma';
   COMMENT ON COLUMN "AXIS"."DEPORTES"."CDEPORT" IS 'C�digo de profesi�n';
   COMMENT ON COLUMN "AXIS"."DEPORTES"."TDEPORT" IS 'Descripci�n de profesi�n';
   COMMENT ON TABLE "AXIS"."DEPORTES"  IS 'Deportes';
  GRANT UPDATE ON "AXIS"."DEPORTES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DEPORTES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DEPORTES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DEPORTES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DEPORTES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DEPORTES" TO "PROGRAMADORESCSI";
