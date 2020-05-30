--------------------------------------------------------
--  DDL for Table CARENCIAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."CARENCIAS" 
   (	"CCAREN" NUMBER(6,0), 
	"CIDIOMA" NUMBER(2,0), 
	"TCAREN" VARCHAR2(60 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CARENCIAS"."CCAREN" IS 'C�digo de acto m�dico';
   COMMENT ON COLUMN "AXIS"."CARENCIAS"."CIDIOMA" IS 'C�digo del idioma 1.- Catal� 2.- Castellano';
   COMMENT ON COLUMN "AXIS"."CARENCIAS"."TCAREN" IS 'Texto - Descripci�n Carencia';
   COMMENT ON TABLE "AXIS"."CARENCIAS"  IS 'Descripci�n de las carencias';
  GRANT UPDATE ON "AXIS"."CARENCIAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CARENCIAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CARENCIAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CARENCIAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CARENCIAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CARENCIAS" TO "PROGRAMADORESCSI";