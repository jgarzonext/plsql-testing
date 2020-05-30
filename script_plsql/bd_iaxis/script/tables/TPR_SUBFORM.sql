--------------------------------------------------------
--  DDL for Table TPR_SUBFORM
--------------------------------------------------------

  CREATE TABLE "AXIS"."TPR_SUBFORM" 
   (	"CAGRUPA" NUMBER(4,0), 
	"CSUBAGRUPA" NUMBER(4,0), 
	"NFORM" NUMBER(6,0), 
	"TFORM" VARCHAR2(40 BYTE), 
	"SLITERA" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."TPR_SUBFORM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TPR_SUBFORM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TPR_SUBFORM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TPR_SUBFORM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TPR_SUBFORM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TPR_SUBFORM" TO "PROGRAMADORESCSI";
