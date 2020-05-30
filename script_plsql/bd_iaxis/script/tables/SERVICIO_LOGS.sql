--------------------------------------------------------
--  DDL for Table SERVICIO_LOGS
--------------------------------------------------------

  CREATE TABLE "AXIS"."SERVICIO_LOGS" 
   (	"SINTERF" NUMBER, 
	"CINTERF" VARCHAR2(4 BYTE), 
	"FECHA_SOLICITUD" DATE, 
	"ENTRADA" CLOB, 
	"SALIDA" CLOB, 
	"ESTADO" NUMBER, 
	"LOG_ID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" 
 LOB ("ENTRADA") STORE AS SECUREFILE (
  TABLESPACE "AXIS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("SALIDA") STORE AS SECUREFILE (
  TABLESPACE "AXIS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
  GRANT UPDATE ON "AXIS"."SERVICIO_LOGS" TO "AXIS00";
  GRANT SELECT ON "AXIS"."SERVICIO_LOGS" TO "AXIS00";
  GRANT INSERT ON "AXIS"."SERVICIO_LOGS" TO "AXIS00";
  GRANT DELETE ON "AXIS"."SERVICIO_LOGS" TO "AXIS00";
