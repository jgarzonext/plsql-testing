--------------------------------------------------------
--  DDL for Index CASOS_BPM_I5
--------------------------------------------------------

  CREATE INDEX "AXIS"."CASOS_BPM_I5" ON "AXIS"."CASOS_BPM" ("CEMPRES", "CESTADO", "NCASO_BPM", "NSOLICI_BPM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;