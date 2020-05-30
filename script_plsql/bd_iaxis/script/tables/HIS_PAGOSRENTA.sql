--------------------------------------------------------
--  DDL for Table HIS_PAGOSRENTA
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_PAGOSRENTA" 
   (	"SRECREN" NUMBER(8,0), 
	"SSEGURO" NUMBER, 
	"SPERSON" NUMBER(10,0), 
	"FFECEFE" DATE, 
	"FFECPAG" DATE, 
	"FFECANU" DATE, 
	"CMOTANU" NUMBER(2,0), 
	"ISINRET" NUMBER, 
	"PRETENC" NUMBER(5,3), 
	"IRETENC" NUMBER, 
	"ICONRET" NUMBER, 
	"IBASE" NUMBER, 
	"PINTGAR" NUMBER(5,3), 
	"PPARBEN" NUMBER(5,3), 
	"NCTACOR" VARCHAR2(50 BYTE), 
	"NREMESA" NUMBER(4,0), 
	"FREMESA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."HIS_PAGOSRENTA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PAGOSRENTA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_PAGOSRENTA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_PAGOSRENTA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PAGOSRENTA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_PAGOSRENTA" TO "PROGRAMADORESCSI";