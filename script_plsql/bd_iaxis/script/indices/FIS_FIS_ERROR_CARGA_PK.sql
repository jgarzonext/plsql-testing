--------------------------------------------------------
--  DDL for Index FIS_FIS_ERROR_CARGA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."FIS_FIS_ERROR_CARGA_PK" ON "AXIS"."FIS_ERROR_CARGA" ("SFISCAB", "NNUMORD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS_IND" ;
