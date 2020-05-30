--------------------------------------------------------
--  DDL for Table IRPFDESCENDIENTES
--------------------------------------------------------

  CREATE TABLE "AXIS"."IRPFDESCENDIENTES" 
   (	"SPERSON" NUMBER(10,0), 
	"FNACIMI" DATE, 
	"CGRADO" NUMBER(1,0), 
	"CENTER" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."IRPFDESCENDIENTES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IRPFDESCENDIENTES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."IRPFDESCENDIENTES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."IRPFDESCENDIENTES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IRPFDESCENDIENTES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."IRPFDESCENDIENTES" TO "PROGRAMADORESCSI";