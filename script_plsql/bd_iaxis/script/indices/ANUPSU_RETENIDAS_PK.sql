--------------------------------------------------------
--  DDL for Index ANUPSU_RETENIDAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."ANUPSU_RETENIDAS_PK" ON "AXIS"."ANUPSU_RETENIDAS" ("SSEGURO", "NMOVIMI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
