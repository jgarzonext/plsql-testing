--------------------------------------------------------
--  DDL for Table CONTROLSANDES
--------------------------------------------------------

  CREATE TABLE "AXIS"."CONTROLSANDES" 
   (	"CCONTROL" VARCHAR2(4 BYTE), 
	"CAMBITO" VARCHAR2(4 BYTE), 
	"AGR_SALUD" VARCHAR2(3 BYTE), 
	"CIDIOMA" NUMBER(2,0), 
	"TCONTROL" VARCHAR2(150 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CONTROLSANDES"."CCONTROL" IS 'C�digo de control/validaci�n';
   COMMENT ON COLUMN "AXIS"."CONTROLSANDES"."CAMBITO" IS 'C�digo de �mbito: REEMB, FACT';
   COMMENT ON COLUMN "AXIS"."CONTROLSANDES"."AGR_SALUD" IS 'C�digo grupo de productos (parproducto agr_salud)';
   COMMENT ON COLUMN "AXIS"."CONTROLSANDES"."CIDIOMA" IS 'C�digo de idioma';
   COMMENT ON COLUMN "AXIS"."CONTROLSANDES"."TCONTROL" IS 'Descripci�n ';
  GRANT UPDATE ON "AXIS"."CONTROLSANDES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONTROLSANDES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CONTROLSANDES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CONTROLSANDES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONTROLSANDES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CONTROLSANDES" TO "PROGRAMADORESCSI";
