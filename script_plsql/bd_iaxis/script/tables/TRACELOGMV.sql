--------------------------------------------------------
--  DDL for Table TRACELOGMV
--------------------------------------------------------

  CREATE TABLE "AXIS"."TRACELOGMV" 
   (	"OWNER" VARCHAR2(100 BYTE), 
	"PROCDATE" DATE, 
	"STATEMENT" VARCHAR2(2000 BYTE), 
	"STATUS" NUMBER DEFAULT 0, 
	"ERRORSQL" CLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" 
 LOB ("ERRORSQL") STORE AS BASICFILE (
  TABLESPACE "AXIS_IND" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
  GRANT UPDATE ON "AXIS"."TRACELOGMV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TRACELOGMV" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TRACELOGMV" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TRACELOGMV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TRACELOGMV" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TRACELOGMV" TO "PROGRAMADORESCSI";