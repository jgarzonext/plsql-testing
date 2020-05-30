--------------------------------------------------------
--  DDL for Table CTACATEGORIA_ORDEN
--------------------------------------------------------

  CREATE TABLE "AXIS"."CTACATEGORIA_ORDEN" 
   (	"CTIPCUENTA" NUMBER(4,0), 
	"NPRIOR" NUMBER(3,0), 
	"CTIPCUENTAHOST" VARCHAR2(25 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CTACATEGORIA_ORDEN"."CTIPCUENTA" IS 'Codigo de tipod e cuenta de HOST';
   COMMENT ON COLUMN "AXIS"."CTACATEGORIA_ORDEN"."NPRIOR" IS 'Prioridad';
   COMMENT ON TABLE "AXIS"."CTACATEGORIA_ORDEN"  IS 'Correspondencias entre tipos de contratos';
  GRANT UPDATE ON "AXIS"."CTACATEGORIA_ORDEN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CTACATEGORIA_ORDEN" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CTACATEGORIA_ORDEN" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CTACATEGORIA_ORDEN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CTACATEGORIA_ORDEN" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CTACATEGORIA_ORDEN" TO "PROGRAMADORESCSI";
