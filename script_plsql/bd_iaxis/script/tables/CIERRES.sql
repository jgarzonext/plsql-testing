--------------------------------------------------------
--  DDL for Table CIERRES
--------------------------------------------------------

  CREATE TABLE "AXIS"."CIERRES" 
   (	"FPERINI" DATE, 
	"FPERFIN" DATE, 
	"FCIERRE" DATE, 
	"CEMPRES" NUMBER(2,0), 
	"CTIPO" NUMBER(2,0), 
	"CESTADO" NUMBER(2,0), 
	"SPROCES" NUMBER, 
	"FPROCES" DATE, 
	"FCONTAB" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CIERRES"."CESTADO" IS 'Estado del cierre [tabla cierres]. [valores.cvalor=168]';
   COMMENT ON COLUMN "AXIS"."CIERRES"."FCONTAB" IS 'Data de comptabilització per al SAP';
  GRANT UPDATE ON "AXIS"."CIERRES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CIERRES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CIERRES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CIERRES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CIERRES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CIERRES" TO "PROGRAMADORESCSI";
