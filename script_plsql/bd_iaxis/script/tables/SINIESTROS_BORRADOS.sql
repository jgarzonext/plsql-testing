--------------------------------------------------------
--  DDL for Table SINIESTROS_BORRADOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."SINIESTROS_BORRADOS" 
   (	"NSINIES" NUMBER(8,0), 
	"FPROCES" DATE, 
	"TSINIES" VARCHAR2(500 BYTE), 
	"CUSUARI" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."SINIESTROS_BORRADOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SINIESTROS_BORRADOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SINIESTROS_BORRADOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SINIESTROS_BORRADOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SINIESTROS_BORRADOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SINIESTROS_BORRADOS" TO "PROGRAMADORESCSI";
