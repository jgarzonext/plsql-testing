--------------------------------------------------------
--  DDL for Index RIEACTAMP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."RIEACTAMP_PK" ON "AXIS"."RIESGOACTAMP_CONF" ("CEMPRES", "CRAMO", "CMODALI", "CTIPSEG", "CRIESGOACT", "CCODAMPARO", "CACTIVI", "FFECINI", "CCOLECT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;