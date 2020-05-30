--------------------------------------------------------
--  DDL for Index BF_GRUPSUBGRUP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."BF_GRUPSUBGRUP_PK" ON "AXIS"."BF_GRUPSUBGRUP" ("CEMPRES", "CGRUP", "CSUBGRUP", "CVERSION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;