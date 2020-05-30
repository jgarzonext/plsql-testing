--------------------------------------------------------
--  DDL for Table LIQPAGREAAUX
--------------------------------------------------------

  CREATE TABLE "AXIS"."LIQPAGREAAUX" 
   (	"NSINIES" NUMBER, 
	"SSEGURO" NUMBER, 
	"SCONTRA" NUMBER(6,0), 
	"NVERSIO" NUMBER(2,0), 
	"CTRAMO" NUMBER(2,0), 
	"CCOMPANI" NUMBER(3,0), 
	"CRAMO" NUMBER(8,0), 
	"CTIPRAM" NUMBER(2,0), 
	"NPOLIZA" NUMBER, 
	"FVENCIM" DATE, 
	"NANYO" NUMBER(4,0), 
	"TSITRIE" VARCHAR2(150 BYTE), 
	"FSIN" DATE, 
	"TNOMBRE" VARCHAR2(60 BYTE), 
	"ITOTAL" NUMBER, 
	"PPROPIO" NUMBER(8,5), 
	"IPROPIO" NUMBER, 
	"PTRAMO" NUMBER(8,5), 
	"ITRAMO" NUMBER, 
	"PCOMPAN" NUMBER(8,5), 
	"ICOMPAN" NUMBER, 
	"SPROCES" NUMBER, 
	"SIDEPAG" NUMBER(8,0), 
	"CGARANT" NUMBER(4,0), 
	"NSEGCON" NUMBER(1,0), 
	"FEFECTO" DATE, 
	"FEFEPAG" DATE, 
	"FNOTIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."LIQPAGREAAUX" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LIQPAGREAAUX" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."LIQPAGREAAUX" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."LIQPAGREAAUX" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LIQPAGREAAUX" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."LIQPAGREAAUX" TO "PROGRAMADORESCSI";
