--------------------------------------------------------
--  DDL for Table ADM_RECUNIF
--------------------------------------------------------

  CREATE TABLE "AXIS"."ADM_RECUNIF" 
   (	"NRECIBO" NUMBER, 
	"NRECUNIF" NUMBER, 
	"SDOMUNIF" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."ADM_RECUNIF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ADM_RECUNIF" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ADM_RECUNIF" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ADM_RECUNIF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ADM_RECUNIF" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ADM_RECUNIF" TO "PROGRAMADORESCSI";
