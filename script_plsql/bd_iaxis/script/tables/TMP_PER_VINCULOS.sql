--------------------------------------------------------
--  DDL for Table TMP_PER_VINCULOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."TMP_PER_VINCULOS" 
   (	"SPERSON" NUMBER(10,0), 
	"CAGENTE" VARCHAR2(8 BYTE), 
	"CVINCLO" NUMBER(4,0), 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FMOVIMI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."TMP_PER_VINCULOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_PER_VINCULOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TMP_PER_VINCULOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TMP_PER_VINCULOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_PER_VINCULOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TMP_PER_VINCULOS" TO "PROGRAMADORESCSI";
