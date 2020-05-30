--------------------------------------------------------
--  DDL for Table TMP_HISPER_CCC
--------------------------------------------------------

  CREATE TABLE "AXIS"."TMP_HISPER_CCC" 
   (	"SPERSON" NUMBER(10,0), 
	"CAGENTE" NUMBER, 
	"CTIPBAN" NUMBER(3,0), 
	"CBANCAR" VARCHAR2(50 BYTE), 
	"FBAJA" DATE, 
	"CDEFECTO" NUMBER(1,0), 
	"CUSUMOV" VARCHAR2(20 BYTE), 
	"FUSUMOV" DATE, 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FMOVIMI" DATE, 
	"NORDEN" NUMBER, 
	"CNORDBAN" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."TMP_HISPER_CCC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_HISPER_CCC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TMP_HISPER_CCC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TMP_HISPER_CCC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_HISPER_CCC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TMP_HISPER_CCC" TO "PROGRAMADORESCSI";
