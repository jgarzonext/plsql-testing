--------------------------------------------------------
--  DDL for Index SGT_SUBTABS_DET_IX1
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."SGT_SUBTABS_DET_IX1" ON "AXIS"."SGT_SUBTABS_DET" ("CEMPRES", "CSUBTABLA", "CVERSUBT", "CCLA1", "CCLA2", "CCLA3", "CCLA4", "CCLA5", "CCLA6", "CCLA7", "CCLA8", "CCLA9", "CCLA10") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;