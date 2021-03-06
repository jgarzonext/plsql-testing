--------------------------------------------------------
--  DDL for Table COMPANIPRO
--------------------------------------------------------

  CREATE TABLE "AXIS"."COMPANIPRO" 
   (	"SPRODUC" NUMBER(6,0), 
	"CCOMPANI" NUMBER(3,0), 
	"CAGENCORR" VARCHAR2(30 BYTE), 
	"SPRODUCESP" NUMBER(6,0), 
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

   COMMENT ON COLUMN "AXIS"."COMPANIPRO"."SPRODUC" IS 'Codigo del Producto asociado a la compa�ia';
   COMMENT ON COLUMN "AXIS"."COMPANIPRO"."CCOMPANI" IS 'Codigo de Compa�ia';
   COMMENT ON COLUMN "AXIS"."COMPANIPRO"."CAGENCORR" IS 'Codigo del agente en la compa�ia/producto';
   COMMENT ON COLUMN "AXIS"."COMPANIPRO"."SPRODUCESP" IS 'Codigo del producto especifico (si se ha definido un producto gen�rico)';
   COMMENT ON COLUMN "AXIS"."COMPANIPRO"."CUSUALT" IS 'Usuario que ha dado de alta el registro';
   COMMENT ON COLUMN "AXIS"."COMPANIPRO"."FALTA" IS 'Fecha de Alta';
   COMMENT ON COLUMN "AXIS"."COMPANIPRO"."CUSUMOD" IS 'Usuario que ha realizado la ultima modificacion del registro';
   COMMENT ON COLUMN "AXIS"."COMPANIPRO"."FMODIFI" IS 'Fecha de la ultima modificacion del registro';
   COMMENT ON TABLE "AXIS"."COMPANIPRO"  IS 'Codigos de producto asociados a una compa�ia';
  GRANT UPDATE ON "AXIS"."COMPANIPRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COMPANIPRO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."COMPANIPRO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."COMPANIPRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COMPANIPRO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."COMPANIPRO" TO "PROGRAMADORESCSI";
