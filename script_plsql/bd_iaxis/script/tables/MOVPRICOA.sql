--------------------------------------------------------
--  DDL for Table MOVPRICOA
--------------------------------------------------------

  CREATE TABLE "AXIS"."MOVPRICOA" 
   (	"CCOMPANI" NUMBER(3,0), 
	"NRECIBO" NUMBER, 
	"CMOVIMI" NUMBER(2,0), 
	"FCONTAB" DATE, 
	"PCESCOA" NUMBER(5,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MOVPRICOA"."CCOMPANI" IS 'C�digo de compa�ia';
   COMMENT ON COLUMN "AXIS"."MOVPRICOA"."NRECIBO" IS 'N�mero de recibo.';
   COMMENT ON COLUMN "AXIS"."MOVPRICOA"."CMOVIMI" IS 'Tipo movimiento de coaseguro';
   COMMENT ON COLUMN "AXIS"."MOVPRICOA"."FCONTAB" IS 'Mes contable';
   COMMENT ON COLUMN "AXIS"."MOVPRICOA"."PCESCOA" IS 'Porcentaje de participaci�n';
  GRANT UPDATE ON "AXIS"."MOVPRICOA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MOVPRICOA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MOVPRICOA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MOVPRICOA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MOVPRICOA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MOVPRICOA" TO "PROGRAMADORESCSI";
