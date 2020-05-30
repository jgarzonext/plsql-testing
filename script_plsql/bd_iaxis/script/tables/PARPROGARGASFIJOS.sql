--------------------------------------------------------
--  DDL for Table PARPROGARGASFIJOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."PARPROGARGASFIJOS" 
   (	"CEMPRES" NUMBER(2,0), 
	"CRAMO" NUMBER(8,0), 
	"CPRODUC" NUMBER(2,0), 
	"CMODALI" NUMBER(2,0), 
	"CGARANT" NUMBER(4,0), 
	"FINICIO" DATE, 
	"FFIN" DATE, 
	"IPRIMEN" NUMBER(12,3), 
	"ISUCMEN" NUMBER(12,3), 
	"CDIVISA" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."PARPROGARGASFIJOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PARPROGARGASFIJOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PARPROGARGASFIJOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PARPROGARGASFIJOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PARPROGARGASFIJOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PARPROGARGASFIJOS" TO "PROGRAMADORESCSI";
