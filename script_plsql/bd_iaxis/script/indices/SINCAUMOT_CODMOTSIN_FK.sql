--------------------------------------------------------
--  DDL for Index SINCAUMOT_CODMOTSIN_FK
--------------------------------------------------------

  CREATE INDEX "AXIS"."SINCAUMOT_CODMOTSIN_FK" ON "AXIS"."SIN_CAUSA_MOTIVO" ("CCAUSIN", "CMOTSIN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
