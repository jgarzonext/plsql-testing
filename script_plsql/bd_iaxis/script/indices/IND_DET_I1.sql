--------------------------------------------------------
--  DDL for Index IND_DET_I1
--------------------------------------------------------

  CREATE INDEX "AXIS"."IND_DET_I1" ON "AXIS"."DETRECIBOS" ("NRECIBO", "CCONCEP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
