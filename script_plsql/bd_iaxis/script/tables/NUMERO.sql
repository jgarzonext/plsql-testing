--------------------------------------------------------
--  DDL for Table NUMERO
--------------------------------------------------------

  CREATE TABLE "AXIS"."NUMERO" 
   (	"FILA" NUMBER(4,0), 
	 CONSTRAINT "PK_NUMERO" PRIMARY KEY ("FILA") ENABLE
   ) ORGANIZATION INDEX NOCOMPRESS PCTFREE 0 INITRANS 2 MAXTRANS 255 LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" 
 PCTTHRESHOLD 50;
  GRANT UPDATE ON "AXIS"."NUMERO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."NUMERO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."NUMERO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."NUMERO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."NUMERO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."NUMERO" TO "PROGRAMADORESCSI";