--------------------------------------------------------
--  DDL for Table PAR_COMPANIAS_REA
--------------------------------------------------------

  CREATE TABLE "AXIS"."PAR_COMPANIAS_REA" 
   (	"CCOMPANI" NUMBER, 
	"FFINI" DATE, 
	"FFFIN" DATE, 
	"CPARCOMP" VARCHAR2(20 BYTE), 
	"CVALPAR" NUMBER(8,0), 
	"MCAINH" VARCHAR2(1 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT DELETE ON "AXIS"."PAR_COMPANIAS_REA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PAR_COMPANIAS_REA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PAR_COMPANIAS_REA" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."PAR_COMPANIAS_REA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PAR_COMPANIAS_REA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PAR_COMPANIAS_REA" TO "PROGRAMADORESCSI";