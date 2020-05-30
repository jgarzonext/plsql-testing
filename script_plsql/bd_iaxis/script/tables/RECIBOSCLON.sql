--------------------------------------------------------
--  DDL for Table RECIBOSCLON
--------------------------------------------------------

  CREATE TABLE "AXIS"."RECIBOSCLON" 
   (	"SSEGURO" NUMBER, 
	"NRECIBOANT" NUMBER(9,0), 
	"NRECIBOACT" NUMBER(9,0), 
	"FRECCLON" DATE, 
	"CORIGEN" NUMBER(3,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."RECIBOSCLON"."CORIGEN" IS 'Origen petici�n de clonar (1-Rehabilitaci�n; 2-Anulaci�n)';
  GRANT UPDATE ON "AXIS"."RECIBOSCLON" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."RECIBOSCLON" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."RECIBOSCLON" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."RECIBOSCLON" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."RECIBOSCLON" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."RECIBOSCLON" TO "PROGRAMADORESCSI";