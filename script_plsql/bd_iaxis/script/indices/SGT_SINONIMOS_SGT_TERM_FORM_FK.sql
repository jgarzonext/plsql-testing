--------------------------------------------------------
--  DDL for Index SGT_SINONIMOS_SGT_TERM_FORM_FK
--------------------------------------------------------

  CREATE INDEX "AXIS"."SGT_SINONIMOS_SGT_TERM_FORM_FK" ON "AXIS"."SGT_SINONIMOS" ("SINONIMO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
