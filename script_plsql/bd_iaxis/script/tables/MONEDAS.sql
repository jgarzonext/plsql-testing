--------------------------------------------------------
--  DDL for Table MONEDAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MONEDAS" 
   (	"CIDIOMA" NUMBER(2,0), 
	"CMONEDA" NUMBER(3,0), 
	"NDECIMA" NUMBER(2,0), 
	"CTERMAS" VARCHAR2(3 BYTE), 
	"CTERFEM" VARCHAR2(3 BYTE), 
	"CNUMMAS" VARCHAR2(5 BYTE), 
	"CNUMFEM" VARCHAR2(5 BYTE), 
	"CNUMSEP" VARCHAR2(5 BYTE), 
	"TDESCRI" VARCHAR2(10 BYTE), 
	"CMONINT" VARCHAR2(3 BYTE), 
	"CISO4217N" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MONEDAS"."CISO4217N" IS 'C�digo ISO - 4217N';
  GRANT UPDATE ON "AXIS"."MONEDAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MONEDAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MONEDAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MONEDAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MONEDAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MONEDAS" TO "PROGRAMADORESCSI";
