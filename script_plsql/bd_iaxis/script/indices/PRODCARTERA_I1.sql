--------------------------------------------------------
--  DDL for Index PRODCARTERA_I1
--------------------------------------------------------

  CREATE INDEX "AXIS"."PRODCARTERA_I1" ON "AXIS"."PRODCARTERA" ("CEMPRES", "FCARANT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS_IND" ;
